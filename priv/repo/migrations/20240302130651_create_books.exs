defmodule Clay.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :author, :string
      add :series, :string
      add :episode, :integer
      add :title, :string
      add :tags, {:array, :string}

      timestamps(type: :utc_datetime)
    end
  end
end
