defmodule Clay.Media.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :author, :string
    field :title, :string
    field :series, :string
    field :episode, :integer
    field :tags, {:array, :string}

    timestamps(type: :utc_datetime)
  end

  def to_struct(changeset), do: apply_changes(changeset)

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:author, :series, :episode, :title, :tags])
    |> validate_required([:author, :title, :tags])
  end
end
