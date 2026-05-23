defmodule Clay.StadtbibliothekRostockPlug do
  @moduledoc """
  Stub response from Stadtbibliothek Rostock
  """

  import Plug.Conn

  def init(opts), do: opts

  def call(%{method: _method, request_path: "/Mediensuche/Einfache-Suche"} = conn, _opts) do
    body = File.read!("x.html")

    conn
    |> Req.Test.html(body)
  end

  def call(%{method: method, request_path: "/Benutzerkonto"} = conn, _opts) do
    {body, cookies} = conn |> fetch_cookies() |> get_cookies() |> get_response(method)

    conn
    |> put_resp_cookies(cookies)
    |> Req.Test.html(body)
  end

  defp get_response(%{".DOTNETNUKE" => _}, "GET") do
    body = File.read!("c.html")

    {body, []}
  end

  defp get_response(_cookies, "GET") do
    body = """
    <!doctype html>
    <html>
    <head><title>Stadtbibliothek Rostock > Benutzerkonto</title></head>
    <body>
    <form method="post" action="/Benutzerkonto" id="Form" enctype="multipart/form-data">
      <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
      <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
      <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="MTy9aF07b1iRqX9o" />
      <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334" />
      <input type="hidden" name="__VIEWSTATEENCRYPTED" id="__VIEWSTATEENCRYPTED" value="" />
      <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="upXMpT3RSOGE0Pxs" />
      <input type="hidden" name="dnn$cookielaw$width" id="dnn_cookielaw_width" />
      <input type="hidden" name="dnn$cookielaw$height" id="dnn_cookielaw_height" />
      <input type="submit" name="dnn$cookielaw$popupCookieDetailsDialog$btnDefault" value="OK" id="dnn_cookielaw_popupCookieDetailsDialog_btnDefault" />
      <input name="dnn$dnnSEARCH2$txtSearch" type="text" id="dnn_dnnSEARCH2_txtSearch" />
      <input name="dnn$dnnSEARCH$txtSearch" type="text" id="dnn_dnnSEARCH_txtSearch" />
      <input name="dnn$ctr843$Login$Login_COP$txtUsername" type="text" id="dnn_ctr843_Login_Login_COP_txtUsername" />
      <input name="dnn$ctr843$Login$Login_COP$txtPassword" type="password" id="dnn_ctr843_Login_Login_COP_txtPassword" />
      <input type="submit" name="dnn$ctr843$Login$Login_COP$cmdLogin" value="Anmeldung" id="dnn_ctr843_Login_Login_COP_cmdLogin" />
      <input name="dnn$ctr843$Login$Login_COP$txtUsernameForgot" type="text" id="dnn_ctr843_Login_Login_COP_txtUsernameForgot" />
      <input type="submit" name="dnn$ctr843$Login$Login_COP$BtnForgot" value="Passwort zurücksetzen" id="dnn_ctr843_Login_Login_COP_BtnForgot" />
      <input name="dnn$ctr843$Login$Login_COP$txtResetCode" type="text" id="dnn_ctr843_Login_Login_COP_txtResetCode" />
      <input name="dnn$ctr843$Login$Login_COP$txtResetPwd" type="password" id="dnn_ctr843_Login_Login_COP_txtResetPwd" />
      <input name="dnn$ctr843$Login$Login_COP$txtResetPwd2" type="password" id="dnn_ctr843_Login_Login_COP_txtResetPwd2" />
      <input type="submit" name="dnn$ctr843$Login$Login_COP$BtnReset" value="Passwort speichern" id="dnn_ctr843_Login_Login_COP_BtnReset" />
      <input name="ScrollTop" type="hidden" id="ScrollTop" />
      <input name="__dnnVariable" type="hidden" id="__dnnVariable" value="`{`__scdoff`:`1`}" />
    </form>
    </body>
    </html>
    """

    cookies = [
      {"dnn_IsMobile", "False"},
      {"language", "de-DE"},
      {".ASPXANONYMOUS", "ZQ4iH_yx1qzucrMC"},
      {"ASP.NET_SessionId", "sv2wma4533qntr3q"}
    ]

    {body, cookies}
  end

  defp get_response(_cookies, "POST") do
    body = """
    1|#||4|64|pageRedirect||https%3a%2f%2fkatalog.stadtbibliothek-rostock.de%2fBenutzerkonto|
    """

    cookies = [
      {"dnn_IsMobile", "False"},
      {"language", "de-DE"},
      {"COPAUTH", "lL1S8mYu3FcWzhka"},
      {"authentication", "COP"},
      {".DOTNETNUKE", "FF9E3CDC96792F12"},
      {"returnurl", ""}
    ]

    {body, cookies}
  end

  defp put_resp_cookies(conn, cookies) do
    Enum.reduce(cookies, conn, fn {key, value}, acc ->
      put_resp_cookie(acc, key, value)
    end)
  end
end
