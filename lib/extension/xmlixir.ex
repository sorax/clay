defmodule Extension.XMLixir do
  @moduledoc """
  XMLixir is an XML parser for Elixir.
  """

  import Extension.Enum

  def parse({:ok, xml}), do: parse(xml)
  def parse({:error, data}), do: {:error, data}

  def parse(xml) when is_binary(xml) do
    try do
      {:ok, parse!(xml)}
    catch
      :exit, {:fatal, error} -> {:error, error}
    end
  end

  def parse!(xml) when is_binary(xml) do
    {data, _} = scan(xml)

    parse_record(data)
  end

  defp scan(xml) do
    xml
    |> :erlang.bitstring_to_list()
    |> :xmerl_scan.string(space: :normalize, comments: false, quiet: true)
  end

  defp parse_record([]), do: ""
  defp parse_record([head]), do: parse_record(head)

  defp parse_record(list) when is_list(list) do
    list |> pmap(&parse_record/1) |> Enum.reject(&is_nil/1)
  end

  defp parse_record({:xmlText, _, _, _, ' ', _}), do: nil

  defp parse_record({:xmlText, _, _, _, value, _}), do: parse_value(value)

  defp parse_record({:xmlElement, key, _, _, _, _, _, attr, value, _, _, _}) do
    {to_string(key), parse_attr(attr), parse_record(value)}
  end

  defp parse_attr([]), do: nil
  defp parse_attr(list) when is_list(list), do: list |> Enum.map(&parse_attr/1) |> Map.new()

  defp parse_attr({:xmlAttribute, key, _, _, _, _, _, _, value, _}) do
    {to_string(key), parse_value(value)}
  end

  defp parse_value(value), do: value |> to_string() |> String.trim()

  def build() do
    ~s(<?xml version="1.0" encoding="UTF-8"?>)
  end
end
