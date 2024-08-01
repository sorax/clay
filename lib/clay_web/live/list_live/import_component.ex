defmodule ClayWeb.ListLive.ImportComponent do
  use ClayWeb, :live_component

  alias Clay.Media

  @impl true
  def update(assigns, socket) do
    socket
    |> assign(assigns)
    |> assign(:uploaded_files, [])
    |> allow_upload(:books, accept: ~w(.csv), max_entries: 1)
    |> reply(:ok)
  end

  @impl true
  def handle_event("validate", _params, socket) do
    socket |> reply(:noreply)
  end

  def handle_event("cancel-upload", %{"ref" => ref}, socket) do
    socket
    |> cancel_upload(:books, ref)
    |> reply(:noreply)
  end

  def handle_event("save", _params, socket) do
    uploaded_files =
      consume_uploaded_entries(socket, :books, fn %{path: path}, _entry ->
        path
        |> File.stream!()
        |> CSV.decode!()
        |> Stream.map(fn book ->
          Media.create_book(%{
            author: Enum.at(book, 1),
            series: Enum.at(book, 2),
            episode: Enum.at(book, 3),
            title: Enum.at(book, 4),
            read: Enum.at(book, 5),
            list_id: socket.assigns.list.id
          })
        end)
        |> Enum.to_list()
        |> reply(:ok)
      end)

    socket
    |> update(:uploaded_files, &(&1 ++ uploaded_files))
    |> push_patch(to: socket.assigns.patch)
    |> reply(:noreply)
  end
end
