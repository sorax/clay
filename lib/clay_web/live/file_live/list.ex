defmodule ClayWeb.FileLive.List do
  use ClayWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:files, get_files())
    |> reply(:ok)
  end

  defp get_files() do
    get_storage_path()
    |> File.ls!()
  end

  defp get_storage_path(), do: :clay |> Application.fetch_env!(:storage) |> Keyword.fetch!(:path)
end
