defmodule Extension.XMLixirTest do
  use ExUnit.Case, async: true

  alias Extension.XMLixir

  @valid_xml """
  <?xml version="1.0" encoding="UTF-8"?>
  <post>
    <author id="13" />
    <body>Hello world!</body>
    <footer id="foo" class="bar baz"></footer>
  </post>
  """

  @valid_data {"post", nil,
               [
                 {"author", %{"id" => "13"}, ""},
                 {"body", nil, "Hello world!"},
                 {"footer", %{"id" => "foo", "class" => "bar baz"}, ""}
               ]}

  @invalid_xml """
  <?xml version="1.0" encoding="UTF-8"?>
  <root>
    <open>INVALID</close>
  </root>
  """

  describe "XMLixir.parse/1" do
    test "valid xml returns :ok tuple" do
      assert {:ok, @valid_data} = XMLixir.parse(@valid_xml)
    end

    test "valid :ok tuple returns :ok tuple" do
      assert {:ok, @valid_data} = XMLixir.parse({:ok, @valid_xml})
    end

    test "invalid xml returns :error tuple" do
      assert {:error, error} = XMLixir.parse(@invalid_xml)
      assert {{:endtag_does_not_match, details}, _, _, _} = error
      assert {:was, :close, :should_have_been, :open} = details
    end

    test "invalid :ok tuple returns :error tuple" do
      assert {:error, error} = XMLixir.parse({:ok, @invalid_xml})
      assert {{:endtag_does_not_match, details}, _, _, _} = error
      assert {:was, :close, :should_have_been, :open} = details
    end

    test ":error tuple returns the same tuple" do
      assert {:error, "some data"} = XMLixir.parse({:error, "some data"})
    end
  end

  describe "XMLixir.parse!/1" do
    test "valid xml returns data" do
      assert @valid_data = XMLixir.parse!(@valid_xml)
    end

    test "invalid xml does a fatal exit" do
      assert {:fatal, error} = catch_exit(XMLixir.parse!(@invalid_xml))
      assert {{:endtag_does_not_match, details}, _, _, _} = error
      assert {:was, :close, :should_have_been, :open} = details
    end
  end
end
