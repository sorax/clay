defmodule ClayWeb.FileLive.List do
  use ClayWeb, :live_view

  @storage_path :clay |> Application.get_env(:storage) |> Keyword.fetch!(:path)

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:files, get_files())
    |> reply(:ok)
  end

  defp get_files() do
    @storage_path
    |> File.ls!()
  end
end
