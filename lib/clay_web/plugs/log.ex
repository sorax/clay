defmodule ClayWeb.Plugs.Log do
  @moduledoc """
  """

  alias Clay.Logs

  def init(opts), do: opts

  def call(conn, _opts) do
    conn
    |> get_tracking_data()
    |> transform_tracking_data()
    |> Logs.create_request()

    conn
  end

  defp get_tracking_data(conn) do
    conn
    |> Map.from_struct()
    |> Map.take([:host, :method, :port, :query_string, :remote_ip, :req_headers, :request_path])
  end

  defp transform_tracking_data(data) do
    data
    |> Map.update!(:remote_ip, &get_ip/1)
    |> Map.update!(:req_headers, &get_req_headers/1)
  end

  defp get_ip(remote_ip), do: remote_ip |> Tuple.to_list() |> Enum.join(".")

  defp get_req_headers(value) when is_list(value) do
    value |> Enum.map(&Tuple.to_list/1) |> Jason.encode!()
  end
end
