defmodule Clay.Logs.Request do
  use Ecto.Schema
  import Ecto.Changeset

  schema "requests" do
    field :message, :string

    timestamps()
  end

  @doc false
  def changeset(request, attrs) do
    request
    |> cast(attrs, [:message])
    |> validate_required([:message])
  end
end
