defmodule ClayWeb.BookLiveTest do
  use ClayWeb.ConnCase

  import Phoenix.LiveViewTest
  import Clay.AccountsFixtures
  import Clay.MediaFixtures

  @create_attrs %{
    author: "some author",
    title: "some title",
    series: "some series",
    episode: 42,
    tags: ["read", "unread"]
  }
  @update_attrs %{
    author: "some updated author",
    title: "some updated title",
    series: "some updated series",
    episode: 43,
    tags: ["read"]
  }
  @invalid_attrs %{author: nil, title: nil, series: nil, episode: nil, tags: []}

  defp create_book(_) do
    book = book_fixture()
    %{book: book}
  end

  defp log_in(%{conn: conn}) do
    user = user_fixture()
    %{conn: log_in_user(conn, user)}
  end

  describe "Index" do
    setup [:create_book, :log_in]

    test "lists all books", %{conn: conn, book: book} do
      {:ok, _index_live, html} = live(conn, ~p"/buecher")

      assert html =~ "Bücherliste"
      assert html =~ book.author
    end

    test "saves new book", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("a[title=New]") |> render_click() =~
               "Neues Buch"

      assert_patch(index_live, ~p"/buecher/new")

      assert index_live
             |> form("#book-form", book: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#book-form", book: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher")

      html = render(index_live)
      assert html =~ "Buch erstellt"
      assert html =~ "some author"
    end

    test "updates book in listing", %{conn: conn, book: book} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("#books-#{book.id} a[title=Edit]") |> render_click() =~
               "Buch bearbeiten"

      assert_patch(index_live, ~p"/buecher/#{book}/edit")

      assert index_live
             |> form("#book-form", book: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#book-form", book: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher")

      html = render(index_live)
      assert html =~ "Buch aktualisiert"
      assert html =~ "some updated author"
    end

    test "deletes book", %{conn: conn, book: book} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("#books-#{book.id} a[title=Edit]") |> render_click() =~
               "Buch bearbeiten"

      assert_patch(index_live, ~p"/buecher/#{book}/edit")

      assert index_live |> element("a", "Löschen") |> render_click()

      assert_patch(index_live, ~p"/buecher")

      refute has_element?(index_live, "#books-#{book.id}")
    end
  end
end
