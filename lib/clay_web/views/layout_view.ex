defmodule ClayWeb.LayoutView do
  use ClayWeb, :view

  # Phoenix LiveDashboard is available only in development by default,
  # so we instruct Elixir to not warn if the dashboard route is missing.
  # @compile {:no_warn_undefined, {Routes, :live_dashboard_path, 2}}

  defp get_metatags(conn) do
    {:safe, get_page_config(conn)}
  end

  defp get_page_config(%{path_info: ["impressum" | _], request_path: path}) do
    ~s(<meta name="description" content=""/>
    <meta name="robots" content="noindex,follow"/>
    <link rel="canonical" href="https://hausgedacht.de#{path}"/>)
  end

  defp get_page_config(%{path_info: ["datenschutz" | _], request_path: path}) do
    ~s(<meta name="description" content=""/>
    <meta name="robots" content="noindex,follow"/>
    <link rel="canonical" href="https://hausgedacht.de#{path}"/>)
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
