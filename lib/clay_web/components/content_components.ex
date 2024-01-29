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

  slot :title, required: true
  slot :inner_block, required: true

  def article(assigns) do
    assigns =
      assigns
      |> assign_new(:date_string, fn -> Date.to_string(assigns.date) end)
      |> assign_new(:date_format, fn -> Calendar.strftime(assigns.date, "%d.%m.%Y") end)

    ~H"""
    <article
      id={@id}
      class="first:mt-0 first:pt-0 mt-16 pt-16 border-t-2 border-solid border-[#efefef] first:border-t-0"
    >
      <header class="mb-8">
        <time class="text-sm" datetime={@date_string}><%= @date_format %></time>
        <h1 :if={@title != []} class="text-3xl leading-6 text-darkgray">
          <%= render_slot(@title) %>
        </h1>
      </header>
      <%= render_slot(@inner_block) %>
    </article>
    """
  end
end
