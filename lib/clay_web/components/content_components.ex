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

  @doc """
  Provides a radio group input for a given form field.

  ## Examples

      <.radio_group field={@form[:tip]}>
        <:radio value="0">No Tip</:radio>
        <:radio value="10">10%</:radio>
        <:radio value="20">20%</:radio>
      </.radio_group>
  """
  attr :field, Phoenix.HTML.FormField, required: true

  slot :radio, required: true do
    attr :value, :string, required: true
  end

  slot :inner_block

  def radio_group(assigns) do
    ~H"""
    <div>
      <%= render_slot(@inner_block) %>
      <div :for={{%{value: value} = rad, idx} <- Enum.with_index(@radio)}>
        <label for={"#{@field.id}-#{idx}"}><%= render_slot(rad) %></label>
        <input
          type="radio"
          name={@field.name}
          id={"#{@field.id}-#{idx}"}
          value={value}
          checked={to_string(@field.value) == to_string(value)}
          class="rounded-lg text-zinc-900 focus:ring-0 sm:text-sm sm:leading-6"
        />
      </div>
    </div>
    """
  end
end
