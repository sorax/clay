defmodule ClayWeb.BookLive.Index do
  use ClayWeb, :live_view

  alias Clay.Media
  alias Clay.Media.Book
  alias Clay.Media.Filter

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:app_title, "Bücherliste")
    |> reply(:ok)
  end

  @impl true
  def handle_params(%{"list" => id} = params, _url, socket) do
    list = Media.get_list!(id, preload: :books)

    filter_params = Map.get(params, "filter", %{})
    changeset = Media.change_filter(%Filter{}, filter_params)
    filter = Filter.to_struct(changeset)

    socket
    |> apply_action(socket.assigns.live_action, params)
    |> assign(:list, list)
    |> assign(:books, get_books(list.id, filter))
    |> assign(:filter_form, to_form(changeset, action: :validate))
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
  def handle_event("delete", %{"id" => id}, socket) do
    book = Media.get_book!(id)
    {:ok, _} = Media.delete_book(book)

    socket
    |> push_patch(to: ~p"/buecher/#{socket.assigns.list}")
    |> reply(:noreply)
  end

  def handle_event("filter", %{"filter" => filter}, socket) do
    params = %{filter: filter}

    socket
    |> push_patch(to: ~p"/buecher/#{socket.assigns.list}?#{params}", replace: true)
    |> reply(:noreply)
  end

  defp get_books(list_id, %Filter{} = filter) do
    %{books: books} = Media.get_list!(list_id, preload: :books)

    books
    |> filter_read_books(filter)
    |> filter_unread_books(filter)
    |> Enum.group_by(& &1.author)
    |> Enum.sort_by(&elem(&1, 0))
  end

  defp filter_read_books(books, %{read: false}), do: Enum.reject(books, &(&1.read == true))
  defp filter_read_books(books, _), do: books

  defp filter_unread_books(books, %{unread: false}), do: Enum.reject(books, &(&1.read == false))
  defp filter_unread_books(books, _), do: books
end
