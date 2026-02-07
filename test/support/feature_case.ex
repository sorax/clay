defmodule ClayWeb.FeatureCase do
  @moduledoc false

  use ExUnit.CaseTemplate

  alias Ecto.Adapters.SQL.Sandbox

  using do
    quote do
      use ClayWeb, :verified_routes

      import ClayWeb.FeatureCase

      import PhoenixTest
    end
  end

  setup tags do
    pid = Sandbox.start_owner!(Clay.Repo, shared: not tags[:async])
    on_exit(fn -> Sandbox.stop_owner(pid) end)

    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
