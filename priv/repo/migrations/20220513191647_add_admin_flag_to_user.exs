defmodule Clay.Repo.Migrations.AddAdminFlagToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :admin, :boolean, default: false, null: false
    end
  end
end
