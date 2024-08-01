defmodule Clay.Repo.Migrations.Reset do
  use Ecto.Migration

  def change do
    drop_if_exists unique_index(:users_tokens, [:context, :token])
    drop_if_exists unique_index(:users, [:email])
    drop_if_exists index(:users_tokens, [:user_id])
    drop_if_exists index(:books, [:list_id])
    drop_if_exists table(:books)
    drop_if_exists table(:lists)
    drop_if_exists table(:users_tokens)
    drop_if_exists table(:users)
  end
end
