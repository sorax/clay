defmodule ClayWeb.BookLive.Index do
  use ClayWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:page_title, "Listing Books")
    |> assign_new(:current_user, fn -> nil end)
    |> stream(:books, Ash.read!(Clay.Media.Book, actor: socket.assigns[:current_user]))
    |> ok()
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    book = Ash.get!(Clay.Media.Book, id, actor: socket.assigns.current_user)
    Ash.destroy!(book, actor: socket.assigns.current_user)

    socket
    |> stream_delete(:books, book)
    |> noreply()
  end
end
