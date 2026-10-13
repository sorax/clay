defmodule ClayWeb.MediaLive.Show do
  use ClayWeb, :live_view

  alias Clay.Media
  alias Clay.Media.Book
  alias Plug.Conn.Query

  @progress_states Enum.map(Book.progress_values(), &to_string/1)
  @default_filter Enum.map_join(@progress_states, "&", &"#{&1}=true")

  @impl true
  def mount(%{"list_id" => list_id}, _session, socket) do
    list = Media.get_list_by_id!(list_id, actor: socket.assigns.current_user)

    socket
    |> assign(:page_title, list.title)
    |> assign(:app_title, "Bücher #{list.title}")
    |> assign(:list, list)
    |> ok()
  end

  @impl true
  def handle_params(%{"list_id" => list_id} = params, _uri, socket) do
    form = params |> Map.get("filter", @default_filter) |> Query.decode()

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

  defp query_from_form(form) do
    progress = for status <- @progress_states, form[status] == "true", do: status

    form
    |> Map.drop(@progress_states)
    |> Map.put("progress", progress)
  end
end
