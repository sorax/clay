defmodule ClayWeb.MediaLive.BookForm do
  use ClayWeb, :live_view

  alias Clay.Media

  @impl true
  def mount(%{"list_id" => list_id} = params, _session, socket) do
    list = Media.get_list_by_id!(list_id, load: [:authors], actor: socket.assigns.current_user)

    form = get_form(list.id, params["book_id"], socket.assigns.current_user)

    page_title = if is_nil(params["book_id"]), do: "Buch hinzufügen", else: "Buch bearbeiten"

    series_by_author = series_by_author(list.id, socket.assigns.current_user)

    socket
    |> assign(list_id: list.id)
    |> assign(page_title: page_title)
    |> assign(form: to_form(form))
    |> assign(authors: list.authors)
    |> assign(series_by_author: series_by_author)
    |> assign(series: series_for_author(series_by_author, AshPhoenix.Form.value(form, :author)))
    |> ok()
  end

  @impl true
  def handle_event("validate", %{"book" => book_params}, socket) do
    socket
    |> assign(form: AshPhoenix.Form.validate(socket.assigns.form, book_params))
    |> assign(series: series_for_author(socket.assigns.series_by_author, book_params["author"]))
    |> noreply()
  end

  def handle_event("save", %{"book" => book_params}, socket) do
    case AshPhoenix.Form.submit(socket.assigns.form, params: book_params) do
      {:ok, _book} ->
        socket
        |> put_flash(:info, "Buch gespeichert")
        |> push_navigate(to: ~p"/medien/#{socket.assigns.list_id}")
        |> noreply()

      {:error, form} ->
        socket |> assign(form: form) |> noreply()
    end
  end

  defp series_by_author(list_id, actor) do
    list_id
    |> Media.filter_books!(%{}, actor: actor)
    |> Enum.reject(&is_nil(&1.series))
    |> Enum.group_by(& &1.author, & &1.series)
    |> Map.new(fn {author, series} -> {author, Enum.uniq(series)} end)
  end

  defp series_for_author(series_by_author, author) do
    Map.get(series_by_author, author, [])
  end

  defp get_form(list_id, nil, actor) do
    Media.form_to_create_book(
      as: "book",
      actor: actor,
      transform_params: fn params, _meta ->
        Map.put(params, "list_id", list_id)
      end
    )
  end

  defp get_form(_list_id, id, actor) do
    id
    |> Media.get_book_by_id!(actor: actor)
    |> Media.form_to_update_book(as: "book", actor: actor)
  end
end
