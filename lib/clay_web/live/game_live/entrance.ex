defmodule ClayWeb.GameLive.Entrance do
  use ClayWeb, :live_view

  alias ClayWeb.GameView

  @impl true
  def render(assigns) do
    GameView.render("entrance.html", assigns)
  end

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(page_title: "Entrance")
    |> reply(:ok)
  end

  @impl true
  def handle_event("set_username", %{"user" => %{"name" => name}}, socket) do
    socket
    |> assign(name: name)
    # |> push_redirect(to: Routes.game_spacegame_path(socket, :index), replace: true)
    # |> push_patch(to: Routes.game_spacegame_path(socket, :index), replace: true)
    |> reply(:noreply)
  end
end
