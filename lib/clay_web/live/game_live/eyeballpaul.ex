defmodule ClayWeb.GameLive.Eyeballpaul do
  use ClayWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(page_title: "EyeBallPaul")
    |> reply(:ok)
  end
end
