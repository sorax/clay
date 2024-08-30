defmodule Clay.Repo.Migrations.AddBookRating do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :rating, :integer
    end
  end
end
