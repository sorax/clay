defmodule ClayWeb.PageControllerTest do
  use ClayWeb.FeatureCase, async: true

  test "can render startpage", %{conn: conn} do
    conn
    |> visit(~p"/")
    |> assert_has(~s|meta[name=robots][content="index,follow"]|)
    |> assert_has("title", text: "hausgedacht | Frische Ideen aus eigenem Anbau")
  end

  test "can render privacy page", %{conn: conn} do
    conn
    |> visit(~p"/datenschutz")
    |> assert_has(~s|meta[name=robots][content="noindex,nofollow"]|)
    |> assert_has("title", text: "Datenschutz")
    |> assert_has("h1", text: "Datenschutz")
  end

  test "can render imprint page", %{conn: conn} do
    conn
    |> visit(~p"/impressum")
    |> assert_has(~s|meta[name=robots][content="noindex,nofollow"]|)
    |> assert_has("title", text: "Impressum")
    |> assert_has("h1", text: "Impressum")
  end
end
