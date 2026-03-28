defmodule ClayWeb.BookLive.Form do
  use ClayWeb, :live_view

  @impl true
  def mount(params, _session, socket) do
    book =
      case params["id"] do
        nil -> nil
        id -> Ash.get!(Clay.Media.Book, id, actor: socket.assigns.current_user)
      end

    action = if is_nil(book), do: "New", else: "Edit"
    page_title = action <> " " <> "Book"

    socket
    |> assign(:return_to, return_to(params["return_to"]))
    |> assign(book: book)
    |> assign(:page_title, page_title)
    |> assign_form()
    |> ok()
  end

  defp return_to("show"), do: "show"
  defp return_to(_), do: "index"

  @impl true
  def handle_event("validate", %{"book" => book_params}, socket) do
    socket
    |> assign(form: AshPhoenix.Form.validate(socket.assigns.form, book_params))
    |> noreply()
  end

  def handle_event("save", %{"book" => book_params}, socket) do
    case AshPhoenix.Form.submit(socket.assigns.form, params: book_params) do
      {:ok, book} ->
        socket
        |> put_flash(:info, "Book #{socket.assigns.form.source.type}d successfully")
        |> push_navigate(to: return_path(socket.assigns.return_to, book))
        |> noreply()

      {:error, form} ->
        socket |> assign(form: form) |> noreply()
    end
  end

  defp assign_form(%{assigns: %{book: book}} = socket) do
    form =
      if book do
        AshPhoenix.Form.for_update(book, :update, as: "book", actor: socket.assigns.current_user)
      else
        AshPhoenix.Form.for_create(Clay.Media.Book, :create,
          as: "book",
          actor: socket.assigns.current_user
        )
      end

    assign(socket, form: to_form(form))
  end

  defp return_path("index", _book), do: ~p"/buecher"
  defp return_path("show", book), do: ~p"/buecher/#{book.id}"
end
