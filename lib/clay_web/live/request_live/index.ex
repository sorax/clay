defmodule ClayWeb.RequestLive.Index do
  use ClayWeb, :live_view

  alias Clay.Logs

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:page_title, "Requests")
    |> assign(:requests, get_requests(socket))
    |> reply(:ok)
  end

  @impl true
  def handle_info(:update, socket) do
    socket
    |> assign(:requests, Logs.list_requests())
    |> reply(:noreply)
  end

  defp get_requests(socket) do
    if connected?(socket), do: Logs.list_requests(), else: []
  end
end
