defmodule ClayWeb.Plugs.LogTest do
  use ClayWeb.ConnCase

  alias Clay.Logs

  describe "log requests" do
    test "request is logged, when a page is opened", %{conn: conn} do
      logs_before = Logs.list_requests() |> length()

      conn |> get("/")

      logs_after = Logs.list_requests() |> length()

      assert logs_after === logs_before + 1
    end
  end
end
