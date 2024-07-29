defmodule Clay.MediaTest do
  use Clay.DataCase

  alias Clay.Media

  describe "lists" do
    alias Clay.Media.List

    import Clay.MediaFixtures

    @invalid_attrs %{title: nil}

    test "list_lists/0 returns all lists" do
      list = list_fixture()
      assert Media.list_lists() == [list]
    end

    test "get_list!/1 returns the list with given id" do
      list = list_fixture()
      assert Media.get_list!(list.id) == list
    end

    test "create_list/1 with valid data creates a list" do
      valid_attrs = %{title: "some title"}

      assert {:ok, %List{} = list} = Media.create_list(valid_attrs)
      assert list.title == "some title"
    end

    test "create_list/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Media.create_list(@invalid_attrs)
    end

    test "update_list/2 with valid data updates the list" do
      list = list_fixture()
      update_attrs = %{title: "some updated title"}

      assert {:ok, %List{} = list} = Media.update_list(list, update_attrs)
      assert list.title == "some updated title"
    end

    test "update_list/2 with invalid data returns error changeset" do
      list = list_fixture()
      assert {:error, %Ecto.Changeset{}} = Media.update_list(list, @invalid_attrs)
      assert list == Media.get_list!(list.id)
    end

    test "delete_list/1 deletes the list" do
      list = list_fixture()
      assert {:ok, %List{}} = Media.delete_list(list)
      assert_raise Ecto.NoResultsError, fn -> Media.get_list!(list.id) end
    end

    test "change_list/1 returns a list changeset" do
      list = list_fixture()
      assert %Ecto.Changeset{} = Media.change_list(list)
    end
  end

  describe "books" do
    alias Clay.Media.Book

    import Clay.MediaFixtures

    @invalid_attrs %{read: nil, author: nil, title: nil, series: nil, episode: nil}

    test "list_books/0 returns all books" do
      book = book_fixture()
      assert Media.list_books() == [book]
    end

    test "get_book!/1 returns the book with given id" do
      book = book_fixture()
      assert Media.get_book!(book.id) == book
    end

    test "create_book/1 with valid data creates a book" do
      list = list_fixture()

      valid_attrs = %{
        read: true,
        author: "some author",
        title: "some title",
        series: "some series",
        episode: 42,
        list_id: list.id
      }

      assert {:ok, %Book{} = book} = Media.create_book(valid_attrs)
      assert book.read == true
      assert book.author == "some author"
      assert book.title == "some title"
      assert book.series == "some series"
      assert book.episode == 42
      assert book.list_id == list.id
    end

    test "create_book/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Media.create_book(@invalid_attrs)
    end

    test "update_book/2 with valid data updates the book" do
      book = book_fixture()

      update_attrs = %{
        read: false,
        author: "some updated author",
        title: "some updated title",
        series: "some updated series",
        episode: 43
      }

      assert {:ok, %Book{} = book} = Media.update_book(book, update_attrs)
      assert book.read == false
      assert book.author == "some updated author"
      assert book.title == "some updated title"
      assert book.series == "some updated series"
      assert book.episode == 43
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
