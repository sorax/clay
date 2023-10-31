defmodule ClayWeb.ContentComponents do
  @moduledoc """
  Provides content UI components.
  """
  use Phoenix.Component

  @doc """
  Renders an article.
  """
  attr :id, :string, required: true
  attr :date, :any, required: true
  slot :inner_block, required: true

  def article(assigns) do
    assigns =
      assigns
      |> assign_new(:date_string, fn -> Date.to_string(assigns.date) end)
      |> assign_new(:date_format, fn -> Calendar.strftime(assigns.date, "%d.%m.%Y") end)

    ~H"""
    <article id={@id} class="border-t-2 border-solid border-[#efefef] first:border-t-0">
      <time datetime={@date_string}><%= @date_format %></time>
      <%= render_slot(@inner_block) %>
    </article>
    """
  end
end
