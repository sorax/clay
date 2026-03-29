defmodule ClayWeb.MediaLive.Index do
  use ClayWeb, :live_view

  alias Clay.Media

  @impl true
  def mount(_params, _session, socket) do
    lists = Media.read_lists!(stream?: true, actor: socket.assigns.current_user)

    socket
    |> assign(page_title: "Medienlisten")
    |> assign(app_title: "Medienlisten")
    |> stream(:lists, lists)
    |> ok()
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    list = Media.get_list_by_id!(id, actor: socket.assigns.current_user)
    Media.destroy_list!(list, actor: socket.assigns.current_user)

    socket
    |> stream_delete(:lists, list)
    |> noreply()
  end
end
