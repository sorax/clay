defmodule Clay.Repo.Migrations.CreateRequests do
  use Ecto.Migration

  def change do
    create table(:requests) do
      add :message, :text

      timestamps()
    end
  end
end
