defmodule ClayWeb.PageControllerTest do
  use ClayWeb.ConnCase

  test "does render index page", %{conn: conn} do
    conn = get(conn, ~p"/")

    assert html_response(conn, 200) =~ "hausgedacht"
    assert html_response(conn, 200) =~ ~s(<meta name="robots" content="index,follow")
  end

  test "does render privacy page", %{conn: conn} do
    conn = get(conn, ~p"/datenschutz")

    assert html_response(conn, 200) =~ "Datenschutz</h1>"
    assert html_response(conn, 200) =~ ~s(<meta name="robots" content="noindex,nofollow")
  end

  test "does render imprint page", %{conn: conn} do
    conn = get(conn, ~p"/impressum")

    assert html_response(conn, 200) =~ "Impressum</h1>"
    assert html_response(conn, 200) =~ ~s(<meta name="robots" content="noindex,nofollow")
  end
end
