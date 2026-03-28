defmodule ClayWeb.BookLive.Index do
  use ClayWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash}>
      <.header>
        Listing Books
        <:actions>
          <.button variant="primary" navigate={~p"/buecher/new"}>
            <.icon name="hero-plus" /> New Book
          </.button>
        </:actions>
      </.header>

      <.table
        id="books"
        rows={@streams.books}
        row_click={fn {_id, book} -> JS.navigate(~p"/buecher/#{book}") end}
      >
        <:col :let={{_id, book}} label="Id">{book.id}</:col>

        <:action :let={{_id, book}}>
          <div class="sr-only">
            <.link navigate={~p"/buecher/#{book}"}>Show</.link>
          </div>

          <.link navigate={~p"/buecher/#{book}/edit"}>Edit</.link>
        </:action>

        <:action :let={{id, book}}>
          <.link
            phx-click={JS.push("delete", value: %{id: book.id}) |> hide("##{id}")}
            data-confirm="Are you sure?"
          >
            Delete
          </.link>
        </:action>
      </.table>
    </Layouts.app>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:page_title, "Listing Books")
     |> assign_new(:current_user, fn -> nil end)
     |> stream(:books, Ash.read!(Clay.Media.Book, actor: socket.assigns[:current_user]))}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    book = Ash.get!(Clay.Media.Book, id, actor: socket.assigns.current_user)
    Ash.destroy!(book, actor: socket.assigns.current_user)

    {:noreply, stream_delete(socket, :books, book)}
  end
end
