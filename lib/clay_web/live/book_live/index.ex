defmodule ClayWeb.BookLive.Index do
  use ClayWeb, :live_view

  alias Clay.Media
  alias Clay.Media.Book

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:app_title, "Bücherliste")
    |> reply(:ok)
  end

  @impl true
  def handle_params(%{"list" => id} = params, _url, socket) do
    list = Media.get_list_with_books!(id)

    socket
    |> apply_action(socket.assigns.live_action, params)
    |> assign(:list, list)
    |> assign(:books, get_books(list.id))
    |> reply(:noreply)
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Buch bearbeiten")
    |> assign(:book, Media.get_book!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "Neues Buch")
    |> assign(:book, %Book{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Bücherliste")
    |> assign(:book, nil)
  end

  @impl true
  def handle_info({ClayWeb.BookLive.FormComponent, {:saved, _book}}, socket) do
    socket
    |> assign(:books, get_books(socket.assigns.list.id))
    |> reply(:noreply)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    book = Media.get_book!(id)
    {:ok, _} = Media.delete_book(book)

    socket
    |> assign(:books, get_books(socket.assigns.list.id))
    |> push_patch(to: ~p"/buecher/#{socket.assigns.list}")
    |> reply(:noreply)
  end

  defp get_books(list_id) do
    %{books: books} = Media.get_list_with_books!(list_id)

    books
    |> Enum.group_by(& &1.author)
    |> Enum.sort_by(&elem(&1, 0))
  end
end
