defmodule Clay.Media.Book do
  use Ecto.Schema
  import Ecto.Changeset

  alias Clay.Media.List

  schema "books" do
    field :author, :string
    field :title, :string
    field :series, :string
    field :episode, :integer
    field :read, :boolean, default: false

    belongs_to :list, List

    timestamps(type: :utc_datetime)
  end

  def to_struct(changeset), do: apply_changes(changeset)

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:author, :series, :episode, :title, :read, :list_id])
    |> validate_required([:author, :title, :read, :list_id])
  end
end
