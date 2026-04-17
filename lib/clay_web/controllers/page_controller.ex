defmodule ClayWeb.PageController do
  use ClayWeb, :controller

  def home(conn, _params) do
    conn
    |> assign(:robots, "index,follow")
    # |> assign(:page_title, "")
    # |> assign(:description, "")
    |> assign(:canonical, "https://hausgedacht.de")
    |> render(:home)
  end

  def privacy(conn, _params) do
    conn
    |> assign(:page_title, "Datenschutz")
    # |> assign(:description, "")
    |> assign(:canonical, "https://hausgedacht.de/datenschutz")
    |> render(:privacy)
  end

  def imprint(conn, _params) do
    conn
    |> assign(:page_title, "Impressum")
    # |> assign(:description, "")
    |> assign(:canonical, "https://hausgedacht.de/impressum")
    |> render(:imprint)
  end
end
