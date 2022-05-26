defmodule ClayWeb.Plugs.Log do
  @moduledoc """
  """

  alias Clay.Logs

  def init(opts), do: opts

  def call(conn, _opts) do
    tracking_data =
      conn
      |> get_tracking_data()
      |> transform_tracking_data()

    %{message: tracking_data |> Jason.encode!()}
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
    |> Map.update!(:remote_ip, &transform_value/1)
    |> Map.update!(:req_headers, &transform_value/1)
  end

  defp transform_value(value) when is_list(value) do
    value |> Enum.map(&transform_value/1)
  end

  defp transform_value(value) when is_tuple(value) do
    value |> Tuple.to_list()
  end
end
