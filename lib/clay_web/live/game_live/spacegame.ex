defmodule ClayWeb.GameLive.Spacegame do
  use ClayWeb, :live_view

  alias ClayWeb.Endpoint
  alias ClayWeb.GameView
  alias ClayWeb.Presence

  # lobby
  # game

  @topic "spacegame"

  @impl true
  def render(assigns) do
    GameView.render("spacegame.html", assigns)
  end

  # entrance
  # lobby
  # game

  @impl true
  def mount(_params, _session, socket) do
    Presence.track(self(), @topic, socket.id, %{id: socket.id})

    Endpoint.subscribe(@topic)

    socket
    |> assign(page_title: "Spacegame")
    |> assign(users: list_presences(@topic))
    |> reply(:ok)
  end

  # @impl true
  # def handle_event("set_username", %{"user" => %{"name" => name}}, socket) do
  #   update_presence(self(), @topic, socket.id, %{name: name})

  #   socket
  #   |> assign(name: name)
  #   |> reply(:noreply)
  # end

  @impl true
  def handle_info(_params, socket) do
    # params |> IO.inspect()

    socket
    |> reply(:noreply)
  end

  defp list_presences(topic) do
    topic
    |> Presence.list()
    |> Enum.map(&get_presence_meta/1)
  end

  defp get_presence_meta({_user_id, %{metas: [meta | _]}}), do: meta

  defp update_presence(pid, topic, key, payload) do
    metas =
      Presence.get_by_key(topic, key)[:metas]
      |> List.first()
      |> Map.merge(payload)

    Presence.update(pid, topic, key, metas)
  end
end
