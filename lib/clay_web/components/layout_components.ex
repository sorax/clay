defmodule ClayWeb.LayoutComponents do
  @moduledoc """
  Provides layout UI components.
  """
  use Phoenix.Component

  @doc """
  Renders a meta tag on `@content` updates.

  ## Example

  ```heex
  <.live_meta name="robots" content={assigns[:robots] || "noindex,nofollow"} />
  <.live_meta name="description" content={assigns[:page_description]} />
  ```
  """

  attr :name, :string, required: true, values: ~w(description robots)
  attr :content, :string, required: true

  def live_meta(assigns) do
    ~H"""
    <meta :if={@content} name={@name} content={@content} />
    """
  end

  @doc """
  Renders a link tag on `@content` updates.

  ## Example

  ```heex
  <link rel="canonical" href={assigns[:canonical]} />
  ```
  """

  attr :rel, :string, required: true, values: ~w(canonical)
  attr :href, :string, required: true

  def live_link(assigns) do
    ~H"""
    <link rel={@rel} href={@href} />
    """
  end
end
