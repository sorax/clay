defmodule Clay.MediaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Clay.Media` context.
  """
  alias Clay.Media

  @doc """
  Generate a list.
  """
  def list_fixture(attrs \\ %{}) do
    {:ok, list} =
      attrs
      |> Enum.into(%{
        title: "some title"
      })
      |> Media.create_list()

    list
  end

  @doc """
  Generate a book.
  """
  def book_fixture(attrs \\ %{}) do
    list = get_list(attrs)

    {:ok, book} =
      attrs
      |> Enum.into(%{
        author: "some author",
        episode: 42,
        read: true,
        series: "some series",
        title: "some title",
        list_id: list.id
      })
      |> Media.create_book()

    book
  end

  defp get_list(%{list_id: id}), do: Media.get_list!(id)
  defp get_list(_), do: list_fixture()
end
