defmodule ClayWeb.MediaLive.ListForm do
  use ClayWeb, :live_view

  alias AshPhoenix.Form
  alias Clay.Media

  @impl true
  def mount(params, _session, socket) do
    form = get_form(params["list_id"], socket.assigns.current_user)

    page_title = if is_nil(params["list_id"]), do: "Liste hinzufügen", else: "Liste bearbeiten"

    socket
    |> assign(page_title: page_title)
    |> assign(form: to_form(form))
    |> ok()
  end

  @impl true
  def handle_event("validate", %{"list" => list_params}, socket) do
    socket
    |> assign(form: Form.validate(socket.assigns.form, list_params))
    |> noreply()
  end

  def handle_event("save", %{"list" => list_params}, socket) do
    case Form.submit(socket.assigns.form, params: list_params) do
      {:ok, _list} ->
        socket
        |> put_flash(:info, "List #{socket.assigns.form.source.type}d successfully")
        |> push_navigate(to: ~p"/medien")
        |> noreply()

      {:error, form} ->
        socket |> assign(form: form) |> noreply()
    end
  end

  defp get_form(nil, actor) do
    Media.form_to_create_list(as: "list", actor: actor)
  end

  defp get_form(id, actor) do
    id
    |> Media.get_list_by_id!(actor: actor)
    |> Media.form_to_update_list(as: "list", actor: actor)
  end
end
