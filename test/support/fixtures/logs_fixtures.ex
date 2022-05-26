defmodule Clay.LogsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Clay.Logs` context.
  """

  @doc """
  Generate a request.
  """
  def request_fixture(attrs \\ %{}) do
    {:ok, request} =
      attrs
      |> Enum.into(%{
        message: "some message"
      })
      |> Clay.Logs.create_request()

    request
  end
end
