defmodule Clay.Assets do
  alias Clay.Assets.File

  def list() do
    File.list()
  end
end
