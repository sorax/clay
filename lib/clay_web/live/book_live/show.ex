defmodule ClayWeb.BookLive.Show do
  use ClayWeb, :live_view

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    socket
    |> assign(:page_title, "Show Book")
    |> assign(:book, Ash.get!(Clay.Media.Book, id, actor: socket.assigns.current_user))
    |> ok()
  end
end
