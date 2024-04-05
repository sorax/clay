defmodule ClayWeb.BookLive.FormComponent do
  use ClayWeb, :live_component

  alias Clay.Media

  @impl true
  def update(%{book: book} = assigns, socket) do
    changeset = Media.change_book(book)

    socket
    |> assign(assigns)
    |> assign(:authors, Media.list_authors())
    |> assign(:series, Media.list_series())
    |> assign_form(changeset)
    |> reply(:ok)
  end

  @impl true
  def handle_event("validate", %{"book" => book_params}, socket) do
    changeset =
      socket.assigns.book
      |> Media.change_book(book_params)
      |> Map.put(:action, :validate)

    socket
    |> assign_form(changeset)
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
        |> put_flash(:info, "Book updated successfully")
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
        |> put_flash(:info, "Book created successfully")
        |> push_patch(to: socket.assigns.patch)
        |> reply(:noreply)

      {:error, %Ecto.Changeset{} = changeset} ->
        socket |> assign_form(changeset) |> reply(:noreply)
    end
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    assign(socket, :form, to_form(changeset))
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end
