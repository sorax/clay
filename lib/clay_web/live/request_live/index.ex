defmodule ClayWeb.RequestLive.Index do
  use ClayWeb, :live_view

  alias Clay.Logs

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:requests, list_requests())
    |> reply(:ok)
  end

  @impl true
  def handle_params(_params, _url, socket) do
    socket
    |> assign(:page_title, "Requests")
    |> reply(:noreply)
  end

  defp list_requests do
    Logs.list_requests()
  end
end
