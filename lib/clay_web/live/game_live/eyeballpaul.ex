defmodule ClayWeb.GameLive.Eyeballpaul do
  use ClayWeb, :live_view

  alias ClayWeb.Endpoint

  @impl true
  def mount(_params, _session, socket) do
    qr =
      (Endpoint.url() <> Routes.game_eyeballpaul_path(socket, :index))
      |> EQRCode.encode()
      |> EQRCode.svg(color: "#fff", viewbox: true, background_color: ":transparent")

    socket
    |> assign(page_title: "EyeBallPaul")
    |> assign(qr: qr)
    |> reply(:ok)
  end
end
