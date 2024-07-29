defmodule ClayWeb.ListLive.FormComponent do
  use ClayWeb, :live_component

  alias Clay.Media

  @impl true
  def update(%{list: list} = assigns, socket) do
    socket
    |> assign(assigns)
    |> assign_new(:form, fn -> to_form(Media.change_list(list)) end)
    |> reply(:ok)
  end

  @impl true
  def handle_event("validate", %{"list" => list_params}, socket) do
    changeset = Media.change_list(socket.assigns.list, list_params)

    socket
    |> assign(form: to_form(changeset, action: :validate))
    |> reply(:noreply)
  end

  def handle_event("save", %{"list" => list_params}, socket) do
    save_list(socket, socket.assigns.action, list_params)
  end

  defp save_list(socket, :edit, list_params) do
    case Media.update_list(socket.assigns.list, list_params) do
      {:ok, list} ->
        notify_parent({:saved, list})

        socket
        |> put_flash(:info, "Liste aktualisiert")
        |> push_patch(to: socket.assigns.patch)
        |> reply(:noreply)

      {:error, %Ecto.Changeset{} = changeset} ->
        socket |> assign(form: to_form(changeset)) |> reply(:noreply)
    end
  end

  defp save_list(socket, :new, list_params) do
    case Media.create_list(list_params) do
      {:ok, list} ->
        notify_parent({:saved, list})

        socket
        |> put_flash(:info, "Liste erstellt")
        |> push_patch(to: socket.assigns.patch)
        |> reply(:noreply)

      {:error, %Ecto.Changeset{} = changeset} ->
        socket |> assign(form: to_form(changeset)) |> reply(:noreply)
    end
  end

  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end
