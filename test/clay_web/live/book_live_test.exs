defmodule ClayWeb.BookLiveTest do
  use ClayWeb.ConnCase

  import Phoenix.LiveViewTest
  import Clay.AccountsFixtures
  import Clay.MediaFixtures

  @create_attrs %{
    read: true,
    author: "some author",
    title: "some title",
    series: "some series",
    episode: 42
  }
  @update_attrs %{
    read: false,
    author: "some updated author",
    title: "some updated title",
    series: "some updated series",
    episode: 43
  }
  @invalid_attrs %{read: false, author: nil, title: nil, series: nil, episode: nil}

  defp create_book(_) do
    list = list_fixture()
    book = book_fixture(%{list_id: list.id})

    %{list: list, book: book}
  end

  defp log_in(%{conn: conn}) do
    user = user_fixture()
    %{conn: log_in_user(conn, user)}
  end

  describe "Index" do
    setup [:create_book, :log_in]

    test "lists all books", %{conn: conn, list: list, book: book} do
      {:ok, _index_live, html} = live(conn, ~p"/buecher/#{list}")

      assert html =~ "Bücherliste"
      assert html =~ book.author
    end

    test "saves new book", %{conn: conn, list: list} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher/#{list}")

      assert index_live |> element("a[title=New]") |> render_click() =~
               "Neues Buch"

      assert_patch(index_live, ~p"/buecher/#{list}/new")

      assert index_live
             |> form("#book-form", book: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#book-form", book: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher/#{list}")

      html = render(index_live)
      assert html =~ "Buch erstellt"
      assert html =~ "some author"
    end

    test "updates book in listing", %{conn: conn, list: list, book: book} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher/#{list}")

      assert index_live |> element("#books-#{book.id} a[title=Edit]") |> render_click() =~
               "Buch bearbeiten"

      assert_patch(index_live, ~p"/buecher/#{list}/#{book}/edit")

      assert index_live
             |> form("#book-form", book: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#book-form", book: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher/#{list}")

      html = render(index_live)
      assert html =~ "Buch aktualisiert"
      assert html =~ "some updated author"
    end

    test "deletes book", %{conn: conn, list: list, book: book} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher/#{list}")

      assert index_live |> element("#books-#{book.id} a[title=Edit]") |> render_click() =~
               "Buch bearbeiten"

      assert_patch(index_live, ~p"/buecher/#{list}/#{book}/edit")

      assert index_live |> element("a", "Löschen") |> render_click()

      assert_patch(index_live, ~p"/buecher/#{list}")

      refute has_element?(index_live, "#books-#{book.id}")
    end
  end
end
