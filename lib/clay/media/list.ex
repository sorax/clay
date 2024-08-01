defmodule Clay.Media.List do
  use Ecto.Schema
  import Ecto.Changeset

  alias Clay.Media.Book

  @preload_order [asc: :author, asc: :series, asc: :episode, asc: :title]

  schema "lists" do
    field :title, :string

    has_many :books, Book, preload_order: @preload_order

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:title])
    |> validate_required([:title])
  end
end
