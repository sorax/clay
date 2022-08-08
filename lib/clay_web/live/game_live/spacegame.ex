defmodule ClayWeb.GameLive.Spacegame do
  use ClayWeb, :live_view

  alias ClayWeb.Endpoint

  @impl true
  def mount(_params, _session, socket) do
    qr =
      (Endpoint.url() <> Routes.game_spacegame_path(socket, :index))
      |> IO.inspect()

    #   |> EQRCode.encode()
    #   |> EQRCode.svg(color: "#fff", viewbox: true, background_color: ":transparent")

    socket
    |> assign(page_title: "Spacegame")
    |> assign(:qr, qr)
    |> reply(:ok)
  end
end
