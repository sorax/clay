defmodule Clay.Media.Service do
  @moduledoc """
  Supported external services
  """

  use Ash.Type.Enum, values: [stadtbibliothek_rostock: [label: "Stadtbibliothek Rostock"]]
end
