defmodule ClayWeb.PageControllerTest do
  use ClayWeb.ConnCase

  test "GET startpage", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "hausgedacht"
  end

  test "GET imprint", %{conn: conn} do
    conn = get(conn, "/impressum")
    assert html_response(conn, 200) =~ "<h1>Impressum</h1>"
  end
end
