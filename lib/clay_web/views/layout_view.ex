defmodule ClayWeb.LayoutView do
  use ClayWeb, :view

  defp get_metatags(conn) do
    {:safe, get_page_config(conn)}
  end

  defp get_page_config(%{path_info: ["claudia" | _], request_path: path}) do
    ~s(<meta name="description" content=""/>
    <meta name="robots" content="noindex,nofollow"/>
    <link rel="canonical" href="https://hausgedacht.de#{path}"/>)
  end

  defp get_page_config(%{request_path: path}) do
    ~s(<meta name="description" content=""/>
    <meta name="robots" content="index,follow"/>
    <link rel="canonical" href="https://hausgedacht.de#{path}"/>)
  end

  defp is_admin(%{admin: true}), do: true
  defp is_admin(_user), do: false
end
