defmodule Clay.MediaTest do
  use Clay.DataCase

  alias Clay.Media

  describe "books" do
    alias Clay.Media.Book

    import Clay.MediaFixtures

    @invalid_attrs %{author: nil, title: nil, series: nil, episode: nil, tags: nil}

    test "list_books/0 returns all books" do
      book = book_fixture()
      assert Media.list_books() == [book]
    end

    test "get_book!/1 returns the book with given id" do
      book = book_fixture()
      assert Media.get_book!(book.id) == book
    end

    test "create_book/1 with valid data creates a book" do
      valid_attrs = %{
        author: "some author",
        title: "some title",
        series: "some series",
        episode: 42,
        tags: ["read", "unread"]
      }

      assert {:ok, %Book{} = book} = Media.create_book(valid_attrs)
      assert book.author == "some author"
      assert book.title == "some title"
      assert book.series == "some series"
      assert book.episode == 42
      assert book.tags == ["read", "unread"]
    end

    test "create_book/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Media.create_book(@invalid_attrs)
    end

    test "update_book/2 with valid data updates the book" do
      book = book_fixture()

      update_attrs = %{
        author: "some updated author",
        title: "some updated title",
        series: "some updated series",
        episode: 43,
        tags: ["read"]
      }

      assert {:ok, %Book{} = book} = Media.update_book(book, update_attrs)
      assert book.author == "some updated author"
      assert book.title == "some updated title"
      assert book.series == "some updated series"
      assert book.episode == 43
      assert book.tags == ["read"]
    end

    test "update_book/2 with invalid data returns error changeset" do
      book = book_fixture()
      assert {:error, %Ecto.Changeset{}} = Media.update_book(book, @invalid_attrs)
      assert book == Media.get_book!(book.id)
    end

    test "delete_book/1 deletes the book" do
      book = book_fixture()
      assert {:ok, %Book{}} = Media.delete_book(book)
      assert_raise Ecto.NoResultsError, fn -> Media.get_book!(book.id) end
    end

    test "change_book/1 returns a book changeset" do
      book = book_fixture()
      assert %Ecto.Changeset{} = Media.change_book(book)
    end
  end
end
