defmodule Clay.Media.List.Sync do
  @moduledoc false

  alias Clay.Media
  alias Clay.Media.Credential
  alias Clay.Media.List
  alias Clay.Services

  def run(%Credential{service: :stadtbibliothek_rostock} = credential, %List{} = list) do
    case Services.fetch_loans(credential) do
      {:error, reason} ->
        {:error, reason}

      results when is_list(results) ->
        results
        |> Enum.map(&handle_loan(&1, list))
        |> aggregate_results()
    end
  end

  def run(%Credential{service: service}, %List{} = _list) do
    {:error, {:unknown_service, service}}
  end

  defp handle_loan({:ok, loan}, list) do
    attrs = %{
      list_id: list.id,
      author: loan.author,
      title: loan.title,
      series: loan.series,
      episode: parse_episode(loan.episode),
      progress: :read
    }

    case Media.upsert_book(attrs, actor: list.user) do
      {:ok, _book} -> :ok
      {:error, reason} -> {:error, {:upsert_failed, reason}}
    end
  end

  defp handle_loan({:error, reason, url}, _list) do
    {:error, {:fetch_failed, reason, url}}
  end

  defp aggregate_results(results) do
    case Enum.reject(results, &(&1 == :ok)) do
      [] -> :ok
      errors -> {:error, errors}
    end
  end

  defp parse_episode(nil), do: nil

  defp parse_episode(string) when is_binary(string) do
    case Integer.parse(string) do
      {n, _} -> n
      :error -> nil
    end
  end
end
