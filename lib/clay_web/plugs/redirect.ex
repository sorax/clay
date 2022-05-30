defmodule ClayWeb.Plugs.Redirect do
  @moduledoc """
  """

  import Phoenix.Controller, only: [redirect: 2]

  def init([host: _] = opts), do: opts
  def init(_default), do: raise("Redirect missing required option: host")

  def call(conn, host: host) do
    redirect_url = get_redirect_url(conn)

    conn
    |> redirect(external: host <> redirect_url)
  end

  defp get_redirect_url(%{request_path: path, query_string: ""}), do: "#{path}"
  defp get_redirect_url(%{request_path: path, query_string: query}), do: "#{path}?#{query}"
end
