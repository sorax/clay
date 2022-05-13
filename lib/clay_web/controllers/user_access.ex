defmodule ClayWeb.UserAccess do
  import Plug.Conn
  import Phoenix.Controller

  alias ClayWeb.Router.Helpers, as: Routes

  @doc """
  Used for routes that require the user to be admin.
  """
  def require_admin(%{assigns: %{current_user: %{admin: true}}} = conn, _opts) do
    conn
  end

  def require_admin(conn, _opts) do
    conn
    |> put_flash(:error, "You must log in to access this page.")
    |> redirect(to: Routes.user_session_path(conn, :new))
    |> halt()
  end
end
