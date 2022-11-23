defmodule Clay.Repo.Migrations.CreateUploadsFolder do
  use Ecto.Migration

  @storage_path :clay |> Application.fetch_env!(:storage) |> Keyword.fetch!(:path)

  def up do
    File.mkdir_p!(@storage_path)
  end

  def down do
    File.rm_rf!(@storage_path)
  end
end
