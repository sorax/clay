defmodule Clay.MediaFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Clay.Media` context.
  """

  @doc """
  Generate a book.
  """
  def book_fixture(attrs \\ %{}) do
    {:ok, book} =
      attrs
      |> Enum.into(%{
        author: "some author",
        episode: 42,
        series: "some series",
        tags: ["option1", "option2"],
        title: "some title"
      })
      |> Clay.Media.create_book()

    book
  end
end
