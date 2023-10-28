defmodule ClayWeb.PageController do
  use ClayWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    # render(conn, :home, layout: false)

    render(conn, :home)
  end

  def privacy(conn, _params) do
    render(conn, "privacy.html")
  end

  def imprint(conn, _params) do
    render(conn, "imprint.html")
  end
end
