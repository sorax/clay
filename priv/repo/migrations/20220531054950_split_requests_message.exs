defmodule Clay.Repo.Migrations.SplitRequestsMessage do
  use Ecto.Migration

  def change do
    alter table(:requests) do
      remove :message

      add :host, :string
      add :method, :string
      add :port, :integer
      add :query_string, :string
      add :remote_ip, :string
      add :req_headers, :text
      add :request_path, :string
    end
  end
end
