defmodule ClayWeb.BookLive.FormComponent do
  use ClayWeb, :live_component

  alias Clay.Media

  @impl true
  def update(%{book: book, books: books} = assigns, socket) do
    changeset = Media.change_book(book)
    authors = books |> Map.keys() |> Enum.sort()

    socket
    |> assign(assigns)
    |> assign(authors: authors)
    |> assign(series: [])
    |> assign_new(:form, fn -> to_form(changeset) end)
    |> reply(:ok)
  end

  @impl true
  def handle_event("validate", %{"book" => book_params}, socket) do
    changeset =
      socket.assigns.book
      |> Media.change_book(book_params)

    socket
    |> assign(series: get_series(changeset, socket.assigns.books))
    |> assign(form: to_form(changeset, action: :validate))
    |> reply(:noreply)
  end

  def handle_event("save", %{"book" => book_params}, socket) do
    save_book(socket, socket.assigns.action, book_params)
  end

  defp save_book(socket, :edit, book_params) do
    case Media.update_book(socket.assigns.book, book_params) do
      {:ok, book} ->
        notify_parent({:saved, book})

        socket
        |> put_flash(:info, "Buch aktualisiert")
        |> push_patch(to: socket.assigns.patch)
        |> reply(:noreply)

      {:error, %Ecto.Changeset{} = changeset} ->
        socket |> assign_form(changeset) |> reply(:noreply)
    end
  end

  defp save_book(socket, :new, book_params) do
    case Media.create_book(book_params) do
      {:ok, book} ->
        notify_parent({:saved, book})

        socket
        |> put_flash(:info, "Buch erstellt")
        |> push_patch(to: socket.assigns.patch)
        |> reply(:noreply)

      {:error, %Ecto.Changeset{} = changeset} ->
        socket |> assign_form(changeset) |> reply(:noreply)
    end
  end

  defp assign_form(socket, changeset) do
    assign(socket, form: to_form(changeset))
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})

  defp get_series(changeset, books) do
    %{author: author} = Media.Book.to_struct(changeset)

    case Map.get(books, author) do
      nil -> []
      list -> Enum.map(list, & &1.series)
    end
  end
end
