defmodule ClayWeb.FileLive.Upload do
  use ClayWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:uploaded_files, [])
    |> allow_upload(:avatar, accept: ~w(.jpg .jpeg), max_entries: 2)
    |> reply(:ok)
  end

  @impl true
  def handle_event("validate", _params, socket) do
    socket
    |> reply(:noreply)
  end

  @impl true
  def handle_event("cancel-upload", %{"ref" => ref}, socket) do
    socket
    |> cancel_upload(:avatar, ref)
    |> reply(:noreply)
  end

  @impl true
  def handle_event("save", _params, socket) do
    uploaded_files =
      consume_uploaded_entries(socket, :avatar, fn %{path: path}, _entry ->
        dest = Path.join([:code.priv_dir(:clay), "static", "uploads", Path.basename(path)])
        File.cp!(path, dest)
        {:ok, Routes.static_path(socket, "/uploads/#{Path.basename(dest)}")}
      end)

    socket
    |> update(:uploaded_files, &(&1 ++ uploaded_files))
    |> reply(:noreply)
  end

  defp error_to_string(:too_large), do: "Too large"
  defp error_to_string(:too_many_files), do: "You have selected too many files"
  defp error_to_string(:not_accepted), do: "You have selected an unacceptable file type"
end
