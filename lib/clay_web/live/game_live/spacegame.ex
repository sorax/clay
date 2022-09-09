defmodule ClayWeb.GameLive.Spacegame do
  use ClayWeb, :live_view

  alias ClayWeb.Endpoint
  alias ClayWeb.GameView

  @impl true
  def render(assigns) do
    GameView.render("spacegame.html", assigns)
  end


  @impl true
  def mount(_params, _session, socket) do
    qr =
      (Endpoint.url() <> Routes.game_spacegame_path(socket, :index))
      |> EQRCode.encode()
      |> EQRCode.svg(color: "#fff", viewbox: true, background_color: ":transparent")

    socket
    |> assign(page_title: "Spacegame")
    |> assign(:qr, qr)
    |> reply(:ok)
  end
end
