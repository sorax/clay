defmodule ClayWeb.PageController do
  use ClayWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
