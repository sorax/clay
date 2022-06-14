defmodule ClayWeb.RequestLiveTest do
  use ClayWeb.ConnCase

  import Phoenix.LiveViewTest
  import Clay.AccountsFixtures

  # alias Clay.Logs

  describe "show requests" do
    test "redirect if not logged in", %{conn: conn} do
      conn = get(conn, Routes.request_index_path(conn, :index))
      assert redirected_to(conn) == Routes.user_session_path(conn, :new)
    end

    test "redirect is user is not admin", %{conn: conn} do
      user = user_fixture()
      conn = conn |> log_in_user(user)

      conn = get(conn, Routes.request_index_path(conn, :index))
      assert redirected_to(conn) == Routes.user_session_path(conn, :new)
    end

    test "show all requests if admin is logged in", %{conn: conn} do
      user = user_fixture(%{admin: true})
      conn = conn |> log_in_user(user)

      {:ok, view, _html} = live(conn, Routes.request_index_path(conn, :index))

      # [request] = Logs.list_requests()

      assert view |> has_element?("h1", "Requests")
      # assert view |> has_element?("td", request.host)
    end
  end
end
