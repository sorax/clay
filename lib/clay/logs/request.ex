defmodule Clay.Logs.Request do
  use Ecto.Schema
  import Ecto.Changeset

  schema "requests" do
    field :host, :string
    field :method, :string
    field :port, :integer
    field :query_string, :string
    field :remote_ip, :string
    field :req_headers, :string
    field :request_path, :string

    timestamps()
  end

  @doc false
  def changeset(request, attrs) do
    request
    |> cast(attrs, [:host, :method, :port, :query_string, :remote_ip, :req_headers, :request_path])
  end
end
