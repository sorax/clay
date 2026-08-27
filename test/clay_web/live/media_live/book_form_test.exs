defmodule ClayWeb.MediaLive.BookFormTest do
  use ClayWeb.FeatureCase, async: true

  import Clay.Generator

  describe "series suggestions" do
    setup :register_and_log_in_user

    setup %{user: user} do
      list = generate(list(user))
      generate(book(list, user, author: "Lorem", series: "Ipsum"))
      generate(book(list, user, author: "Dolor", series: "Sit"))

      %{list: list}
    end

    test "only series of the entered author are suggested", %{conn: conn, list: list} do
      conn
      |> visit(~p"/medien/#{list}/neu")
      |> refute_has("#series option")
      |> fill_in("Autor", with: "Lorem")
      |> assert_has("#series option[value='Ipsum']")
      |> refute_has("#series option[value='Sit']")
    end

    test "series suggestions are prefiltered by the book's author when editing",
         %{conn: conn, list: list, user: user} do
      book = generate(book(list, user, author: "Lorem", series: "Amet"))

      conn
      |> visit(~p"/medien/#{list}/#{book}/bearbeiten")
      |> assert_has("#series option[value='Ipsum']")
      |> assert_has("#series option[value='Amet']")
      |> refute_has("#series option[value='Sit']")
    end
  end
end
