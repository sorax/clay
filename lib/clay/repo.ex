defmodule Clay.Repo do
  use Ecto.Repo,
    otp_app: :clay,
    adapter: Ecto.Adapters.Postgres
end
