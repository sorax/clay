defmodule ClayWeb.ListLive.Index do
  use ClayWeb, :live_view

  alias Clay.Media
  alias Clay.Media.List

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:app_title, "Bücherliste")
    |> stream(:lists, Media.list_lists())
    |> reply(:ok)
  end

  @impl true
  def handle_params(params, _url, socket) do
    socket
    |> apply_action(socket.assigns.live_action, params)
    |> reply(:noreply)
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Liste bearbeiten")
    |> assign(:list, Media.get_list!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "Neue Liste")
    |> assign(:list, %List{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Bücherlisten")
    |> assign(:list, nil)
  end

  @impl true
  def handle_info({ClayWeb.ListLive.FormComponent, {:saved, list}}, socket) do
    socket
    |> stream_insert(:lists, list)
    |> reply(:noreply)
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    list = Media.get_list!(id)
    {:ok, _} = Media.delete_list(list)

    socket
    |> stream_delete(:lists, list)
    |> reply(:noreply)
  end
end
