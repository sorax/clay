defmodule ClayWeb.PageControllerTest do
  use ClayWeb.ConnCase

  test "does render index page", %{conn: conn} do
    conn = get(conn, ~p"/")

    assert html_response(conn, 200) =~ "hausgedacht"
  end

  test "does render privacy page", %{conn: conn} do
    conn = get(conn, ~p"/datenschutz")

    assert html_response(conn, 200) =~ "Datenschutz</h1>"
  end

  test "does render imprint page", %{conn: conn} do
    conn = get(conn, ~p"/impressum")

    assert html_response(conn, 200) =~ "Impressum</h1>"
  end
end
