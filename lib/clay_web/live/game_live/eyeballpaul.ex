defmodule ClayWeb.GameLive.Eyeballpaul do
  use ClayWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> reply(:ok)
  end
end
