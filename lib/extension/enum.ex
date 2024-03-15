defmodule Extension.Enum do
  @moduledoc """
  Extension for Enum (like a parallel map function)
  """

  @doc """
  Analog to Enum.map, but executed in parallel.
  """
  def pmap(collection, func, timeout \\ 5000) do
    collection
    |> Enum.map(&Task.async(fn -> func.(&1) end))
    |> Task.await_many(timeout)
  end
end
