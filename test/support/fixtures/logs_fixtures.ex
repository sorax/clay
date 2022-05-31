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
        host: "localhost",
        method: "GET",
        port: 443,
        query_string: "",
        remote_ip: "127.0.0.1",
        req_headers: "",
        request_path: "/"
      })
      |> Clay.Logs.create_request()

    request
  end
end
