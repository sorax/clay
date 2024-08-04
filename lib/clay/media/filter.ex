defmodule Clay.Media.Filter do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false
  embedded_schema do
    field :read, :boolean, default: true
    field :unread, :boolean, default: true
  end

  def to_struct(changeset), do: apply_changes(changeset)

  @doc false
  def changeset(filter, attrs) do
    filter
    |> cast(attrs, [:read, :unread])
  end
end
