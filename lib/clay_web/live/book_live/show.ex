defmodule ClayWeb.BookLive.Show do
  use ClayWeb, :live_view

  alias Clay.Media

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:book, Media.get_book!(id))}
  end

  defp page_title(:show), do: "Show Book"
  defp page_title(:edit), do: "Edit Book"
end
