defmodule Clay.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :author, :string
      add :series, :string
      add :episode, :integer
      add :title, :string
      add :read, :boolean, default: false, null: false
      add :list_id, references(:lists, on_delete: :nothing)

      timestamps(type: :utc_datetime)
    end

    create index(:books, [:list_id])
  end
end
