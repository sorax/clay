defmodule ClayWeb.MediaLive.Show do
  use ClayWeb, :live_view

  alias Clay.Media
  alias Plug.Conn.Query

  @impl true
  def mount(%{"list_id" => list_id}, _session, socket) do
    list = Media.get_list_by_id!(list_id, actor: socket.assigns.current_user)

    socket
    |> assign(page_title: list.title)
    |> assign(app_title: "Bücher #{list.title}")
    |> assign(list: list)
    |> ok()
  end

  @impl true
  def handle_params(%{"list_id" => list_id} = params, _uri, socket) do
    default = "read=true&unread=true"
    form = params |> Map.get("filter", default) |> Query.decode()

    query = query_from_form(form)
    books = Media.filter_books!(list_id, query, stream?: true, actor: socket.assigns.current_user)

    socket
    |> assign(filter: to_form(form, as: "filter"))
    |> stream(:books, books, reset: true)
    |> noreply()
  end

  @impl true
  def handle_event("set_filter", %{"filter" => filter}, socket) do
    query = filter |> Enum.reject(fn {_, val} -> val == "" end) |> Query.encode()

    socket
    |> push_patch(to: ~p"/medien/#{socket.assigns.list}?filter=#{query}")
    |> noreply()
  end

  def handle_event("delete", %{"id" => id}, socket) do
    book = Media.get_book_by_id!(id, actor: socket.assigns.current_user)
    Media.destroy_book!(book, actor: socket.assigns.current_user)

    socket
    |> stream_delete(:books, book)
    |> noreply()
  end

  defp query_from_form(form) do
    read = get_read(form)

    form |> Map.put("read", read) |> Map.delete("unread")
  end

  defp get_read(%{"read" => "true", "unread" => "true"}), do: ""
  defp get_read(%{"read" => "true"}), do: "true"
  defp get_read(%{"unread" => "true"}), do: "false"
  defp get_read(_), do: ""
end
