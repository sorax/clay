defmodule ClayWeb.PageController do
  use ClayWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def imprint(conn, _params) do
    render(conn, "imprint.html")
  end

  def privacy(conn, _params) do
    render(conn, "privacy.html")
  end
end
