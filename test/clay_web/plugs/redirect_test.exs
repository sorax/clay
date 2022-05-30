defmodule ClayWeb.Plugs.RedirectTest do
  use ClayWeb.ConnCase

  describe "redirect sorax.net to hausgedacht.de" do
    test "redirect all requests with root path", %{conn: conn} do
      conn = %{conn | host: "sorax.net"} |> get("/")

      assert redirected_to(conn, 302) == "https://hausgedacht.de/"
    end

    test "redirect all requests with sub-path and query string", %{conn: conn} do
      conn = %{conn | host: "sorax.net"} |> get("/example-page?foo=bar")

      assert redirected_to(conn, 302) == "https://hausgedacht.de/example-page?foo=bar"
    end
  end
end
