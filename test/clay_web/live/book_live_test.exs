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
    tags: ["option1", "option2"]
  }
  @update_attrs %{
    author: "some updated author",
    title: "some updated title",
    series: "some updated series",
    episode: 43,
    tags: ["option1"]
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

      assert html =~ "Listing Books"
      assert html =~ book.author
    end

    test "saves new book", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("a", "Neues Buch") |> render_click() =~
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
      assert html =~ "Book created successfully"
      assert html =~ "some author"
    end

    test "updates book in listing", %{conn: conn, book: book} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("#books-#{book.id} a[title=Edit]") |> render_click() =~
               "Edit Book"

      assert_patch(index_live, ~p"/buecher/#{book}/edit")

      assert index_live
             |> form("#book-form", book: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#book-form", book: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/buecher")

      html = render(index_live)
      assert html =~ "Book updated successfully"
      assert html =~ "some updated author"
    end

    test "deletes book in listing", %{conn: conn, book: book} do
      {:ok, index_live, _html} = live(conn, ~p"/buecher")

      assert index_live |> element("#books-#{book.id} a[title=Delete]") |> render_click()
      refute has_element?(index_live, "#books-#{book.id}")
    end
  end

  describe "Show" do
    setup [:create_book, :log_in]

    test "displays book", %{conn: conn, book: book} do
      {:ok, _show_live, html} = live(conn, ~p"/buecher/#{book}")

      assert html =~ "Show Book"
      assert html =~ book.author
    end

    test "updates book within modal", %{conn: conn, book: book} do
      {:ok, show_live, _html} = live(conn, ~p"/buecher/#{book}")

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Book"

      assert_patch(show_live, ~p"/buecher/#{book}/show/edit")

      assert show_live
             |> form("#book-form", book: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert show_live
             |> form("#book-form", book: @update_attrs)
             |> render_submit()

      assert_patch(show_live, ~p"/buecher/#{book}")

      html = render(show_live)
      assert html =~ "Book updated successfully"
      assert html =~ "some updated author"
    end
  end
end
