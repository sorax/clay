defmodule ClayWeb.RequestLive.Index do
  use ClayWeb, :live_view

  alias Clay.Logs

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket), do: Process.send_after(self(), :update, 1000)

    socket
    |> assign(:page_title, "Requests")
    |> assign(:requests, [])
    |> reply(:ok)
  end

  @impl true
  def handle_info(:update, socket) do
    socket
    |> assign(:requests, Logs.list_requests())
    |> reply(:noreply)
  end
end
