defmodule ClayWeb.BookLive.Show do
  use ClayWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash}>
      <.header>
        Book {@book.id}
        <:subtitle>This is a book record from your database.</:subtitle>

        <:actions>
          <.button navigate={~p"/buecher"}>
            <.icon name="hero-arrow-left" />
          </.button>
          <.button variant="primary" navigate={~p"/buecher/#{@book}/edit?return_to=show"}>
            <.icon name="hero-pencil-square" /> Edit Book
          </.button>
        </:actions>
      </.header>

      <.list>
        <:item title="Id">{@book.id}</:item>
      </.list>
    </Layouts.app>
    """
  end

  @impl true
  def mount(%{"id" => id}, _session, socket) do
    {:ok,
     socket
     |> assign(:page_title, "Show Book")
     |> assign(:book, Ash.get!(Clay.Media.Book, id, actor: socket.assigns.current_user))}
  end
end
