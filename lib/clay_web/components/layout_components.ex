defmodule ClayWeb.LayoutComponents do
  @moduledoc """
  Provides layout UI components.
  """
  use Phoenix.Component

  @doc """
  Renders a robots meta tag on `@robots` updates.

  ## Example

  ```heex
  <.live_robots content={assigns[:robots] || "noindex,nofollow"} />
  ```
  """

  attr :content, :string, required: true

  def live_robots(assigns) do
    ~H"""
    <meta name="robots" content={@content} />
    """
  end

  @doc """
  Renders a description meta tag on `@page_description` updates.

  ## Example

  ```heex
  <.live_description content={assigns[:page_description]} />
  ```
  """

  attr :content, :string, required: true

  def live_description(assigns) do
    ~H"""
    <meta :if={@content} name="description" content={@content} />
    """
  end
end
