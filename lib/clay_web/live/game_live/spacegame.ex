defmodule ClayWeb.GameLive.Spacegame do
  use ClayWeb, :live_view

  alias ClayWeb.Endpoint
  alias ClayWeb.GameView
  alias ClayWeb.Presence

  @topic "spacegame"

  @impl true
  def render(%{player_name: _} = assigns) do
    GameView.render("spacegame.html", assigns)
  end

  def render(assigns) do
    ~H"""
    <.form let={f} for={:user} phx-submit="set_username">
      <%= text_input f, :name %>
      <%= submit "Save" %>
    </.form>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    Presence.track(
      self(),
      @topic,
      socket.id,
      %{id: socket.id}
    )

    Endpoint.subscribe(@topic)

    socket
    |> assign(page_title: "Spacegame")
    |> assign(users: list_presences(@topic))
    |> reply(:ok)
  end

  @impl true
  def handle_event("set_username", %{"user" => %{"name" => name}}, socket) do
    name |> IO.inspect()

    socket
    |> assign(player_name: name)
    |> reply(:noreply)
  end

  @impl true
  def handle_info(params, socket) do
    params |> IO.inspect()

    socket
    |> reply(:noreply)
  end

  defp list_presences(topic) do
    Presence.list(topic)
    |> Enum.map(fn {_user_id, data} ->
      data[:metas]
      |> List.first()
    end)
  end

  # def update_presence(pid, topic, key, payload) do
  #   metas =
  #     Presence.get_by_key(topic, key)[:metas]
  #     |> List.first()
  #     |> Map.merge(payload)

  #   Presence.update(pid, topic, key, metas)
  # end
end
