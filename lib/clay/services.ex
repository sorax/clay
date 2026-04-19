defmodule Clay.Services do
  @moduledoc """
  Fetch and parse data from external services.
  """

  alias Clay.Services.StadtbibliothekRostock

  defdelegate fetch_loans(), to: StadtbibliothekRostock, as: :fetch_loans
end
