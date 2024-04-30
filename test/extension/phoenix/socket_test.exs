defmodule Extension.Phoenix.SocketTest do
  use ExUnit.Case, async: true

  alias Extension.Phoenix.Socket

  describe "Extension.Phoenix.Socket" do
    test "reply/2 returns :ok tuple" do
      assert {:ok, :socket} = Socket.reply(:socket, :ok)
    end

    test "reply/2 returns :noreply tuple" do
      assert {:noreply, :socket} = Socket.reply(:socket, :noreply)
    end

    test "reply/3 returns :reply tuple" do
      assert {:reply, %{data: "data"}, :socket} = Socket.reply(:socket, :reply, %{data: "data"})
    end
  end
end
