defmodule Clay.Services.StadtbibliothekRostock do
  @moduledoc false

  @user_agent "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.4 Safari/605.1.15"

  def fetch_loans do
    url = "/Benutzerkonto"
    {:ok, resp} = fetch_page(url)
    page_cookies = get_cookies(resp)
    form_fields = get_form_fields(resp.body)

    {:ok, resp} = login(page_cookies, form_fields)
    login_cookies = get_cookies(resp)

    cookies = Enum.uniq(page_cookies ++ login_cookies)

    url = "/Benutzerkonto"
    {:ok, resp} = fetch_page(url, cookies)

    get_loans(resp.body)
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
    |> LazyHTML.query(~s|input:not(input[type="button"]|)
    |> LazyHTML.attributes()
    |> Enum.map(&to_form_field/1)
  end

  defp to_form_field(attrs) do
    map = Map.new(attrs)

    {String.to_atom(map["name"] || map["id"]), map["value"] || ""}
  end

  defp login(cookies, form_fields) do
    %{stadtbibliothek_rostock: env} = Application.get_env(:clay, :services)

    username = ""
    password = ""

    form = [
      ScriptManager: "dnn$ctr843$Login_UP|dnn$ctr843$Login$Login_COP$cmdLogin",
      ScrollTop: "547",
      __ASYNCPOST: "true",
      __EVENTARGUMENT: "",
      __EVENTTARGET: "",
      __EVENTVALIDATION: form_fields[:__EVENTVALIDATION],
      __VIEWSTATE: form_fields[:__VIEWSTATE],
      __VIEWSTATEENCRYPTED: form_fields[:__VIEWSTATEENCRYPTED],
      __VIEWSTATEGENERATOR: form_fields[:__VIEWSTATEGENERATOR],
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
    body
    |> LazyHTML.from_document()
    |> LazyHTML.query("#dnn_ctr461_MainView_tpnlLoans_LoansHeader")
    |> LazyHTML.text()
  end
end
