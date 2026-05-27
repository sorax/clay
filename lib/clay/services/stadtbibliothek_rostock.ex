defmodule Clay.Services.StadtbibliothekRostock do
  @moduledoc false

  alias Clay.Media.Credential

  @fetch_book_opts [max_concurrency: 5, timeout: 10_000, on_timeout: :kill_task]
  @user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Safari/605.1.15"

  def fetch_loans(credential) do
    with {:ok, cookies} <- fetch_auth_cookies(credential),
         {:ok, resp} <- fetch_page("/Benutzerkonto", cookies) do
      get_loans(resp.body)
    else
      {:error, {:auth_failed, _}} = error -> error
      {:error, reason} -> {:error, {:loans_page_failed, reason}}
    end
  end

  defp fetch_auth_cookies(credential) do
    with {:ok, resp} <- fetch_page("/Benutzerkonto"),
         page_cookies = get_cookies(resp),
         form_fields = get_form_fields(resp.body),
         {:ok, login_resp} <- login(credential, page_cookies, form_fields) do
      login_cookies = get_cookies(login_resp)
      {:ok, Enum.uniq(page_cookies ++ login_cookies)}
    else
      {:error, reason} -> {:error, {:auth_failed, reason}}
    end
  end

  defp fetch_page(url, cookies \\ []) do
    %{stadtbibliothek_rostock: env} = Application.get_env(:clay, :services)

    headers = [
      {"User-Agent", @user_agent},
      {"Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"},
      {"Cookie", Enum.join(cookies, "; ")}
    ]

    [method: :get, url: url, headers: headers]
    |> Keyword.merge(env)
    |> Req.request()
  end

  defp get_cookies(%Req.Response{} = resp) do
    resp
    |> Req.Response.get_header("set-cookie")
    |> Enum.map(&(String.split(&1, ";") |> hd()))
    |> Enum.uniq()
  end

  defp get_form_fields(body) do
    body
    |> LazyHTML.from_document()
    |> LazyHTML.query(~s|input:not([type="button"])|)
    |> LazyHTML.attributes()
    |> Map.new(&to_form_field/1)
  end

  defp to_form_field(attrs) do
    map = Map.new(attrs)

    {map["name"] || map["id"], map["value"] || ""}
  end

  defp login(%Credential{username: username, password: password}, cookies, form_fields) do
    %{stadtbibliothek_rostock: env} = Application.get_env(:clay, :services)

    form = [
      ScriptManager: "dnn$ctr843$Login_UP|dnn$ctr843$Login$Login_COP$cmdLogin",
      ScrollTop: "547",
      __ASYNCPOST: "true",
      __EVENTARGUMENT: "",
      __EVENTTARGET: "",
      __EVENTVALIDATION: form_fields["__EVENTVALIDATION"],
      __VIEWSTATE: form_fields["__VIEWSTATE"],
      __VIEWSTATEENCRYPTED: form_fields["__VIEWSTATEENCRYPTED"],
      __VIEWSTATEGENERATOR: form_fields["__VIEWSTATEGENERATOR"],
      __dnnVariable: "`{`__scdoff`:`1`}",
      "dnn$cookielaw$height": "",
      "dnn$cookielaw$width": "",
      "dnn$ctr843$Login$Login_COP$cmdLogin": "Anmeldung",
      "dnn$ctr843$Login$Login_COP$txtPassword": password,
      "dnn$ctr843$Login$Login_COP$txtResetCode": "",
      "dnn$ctr843$Login$Login_COP$txtResetPwd": "",
      "dnn$ctr843$Login$Login_COP$txtResetPwd2": "",
      "dnn$ctr843$Login$Login_COP$txtUsername": username,
      "dnn$ctr843$Login$Login_COP$txtUsernameForgot": "",
      "dnn$dnnSEARCH$txtSearch": "Ihre Mediensuche ...",
      "dnn$dnnSEARCH2$txtSearch": "Ihre Mediensuche ..."
    ]

    headers = [
      {"User-Agent", @user_agent},
      {"Content-Type", "application/x-www-form-urlencoded; charset=utf-8"},
      {"X-MicrosoftAjax", "Delta=true"},
      {"X-Requested-With", "XMLHttpRequest"},
      {"Referer", "https://katalog.stadtbibliothek-rostock.de/Benutzerkonto"},
      {"Cookie", Enum.join(cookies, "; ")}
    ]

    [method: :post, url: "/Benutzerkonto", form: form, headers: headers, redirect: false]
    |> Keyword.merge(env)
    |> Req.request()
  end

  defp get_loans(body) do
    urls =
      body
      |> LazyHTML.from_document()
      |> LazyHTML.query_by_id("dnn_ctr461_MainView_tpnlLoans_ucLoansView_grdViewLoans")
      |> LazyHTML.query("tr td > a")
      |> LazyHTML.attribute("href")

    urls
    |> Task.async_stream(&fetch_book/1, @fetch_book_opts)
    |> Enum.zip(urls)
    |> Enum.map(&to_loan_result/1)
  end

  defp to_loan_result({{:ok, {:ok, loan}}, _url}), do: {:ok, loan}
  defp to_loan_result({{:ok, {:error, reason}}, url}), do: {:error, reason, url}
  defp to_loan_result({{:exit, reason}, url}), do: {:error, {:task_exit, reason}, url}

  defp fetch_book(url) do
    case url |> get_path() |> fetch_page() do
      {:ok, %{body: body}} -> get_book(body)
      {:error, reason} -> {:error, {:fetch_failed, reason}}
    end
  end

  defp get_path(url) do
    %URI{path: path, query: query} = URI.parse(url)

    "#{path}?#{query}"
  end

  defp get_book(body) do
    lazy_html = LazyHTML.from_document(body)

    with {:ok, title} <- get_title(lazy_html),
         {:ok, author, author_link} <- get_author(lazy_html) do
      {series, episode, series_link} = get_series(lazy_html)

      {:ok,
       %{
         title: title,
         author: author,
         author_link: author_link,
         series: series,
         series_link: series_link,
         episode: episode
       }}
    else
      {:error, reason} -> {:error, {:parse_failed, reason}}
    end
  end

  defp get_title(lazy_html) do
    case lazy_html
         |> LazyHTML.query(".oclc-searchmodule-mediumview-content h3")
         |> LazyHTML.text()
         |> clean_text() do
      "" -> {:error, :missing_title}
      title -> {:ok, title}
    end
  end

  defp get_author(lazy_html) do
    id = "dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LVAuthorValue_LinkAuthor_0"
    element = LazyHTML.query_by_id(lazy_html, id)

    element
    |> LazyHTML.text()
    |> clean_text()
    |> String.replace_trailing(" (Verfasser)", "")
    |> case do
      "" -> {:error, :missing_author}
      name -> {:ok, name, element |> LazyHTML.attribute("href") |> List.first()}
    end
  end

  defp get_series(lazy_html) do
    id = "dnn_ctr377_MainView_UcDetailView_ucSharedCatalogueView_LbSeriesValue_LbSeries_0"
    element = LazyHTML.query_by_id(lazy_html, id)
    link = element |> LazyHTML.attribute("href") |> List.first()

    element
    |> LazyHTML.text()
    |> clean_text()
    |> String.split("; ", parts: 2)
    |> case do
      [""] -> {nil, nil, nil}
      [name] -> {name, nil, link}
      [name, episode] -> {name, episode, link}
    end
  end

  defp clean_text(text), do: text |> String.replace(~r/\s+/, " ") |> String.trim()
end
