defmodule Clay.LogsTest do
  use Clay.DataCase

  alias Clay.Logs

  describe "requests" do
    alias Clay.Logs.Request

    import Clay.LogsFixtures

    @invalid_attrs %{port: "invalid"}

    test "list_requests/0 returns all requests" do
      request = request_fixture()
      assert Logs.list_requests() == [request]
    end

    test "get_request!/1 returns the request with given id" do
      request = request_fixture()
      assert Logs.get_request!(request.id) == request
    end

    test "create_request/1 with valid data creates a request" do
      valid_attrs = %{host: "localhost"}

      assert {:ok, %Request{} = request} = Logs.create_request(valid_attrs)
      assert request.host == "localhost"
    end

    test "create_request/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Logs.create_request(@invalid_attrs)
    end

    test "update_request/2 with valid data updates the request" do
      request = request_fixture()
      update_attrs = %{host: "example.com"}

      assert {:ok, %Request{} = request} = Logs.update_request(request, update_attrs)
      assert request.host == "example.com"
    end

    test "update_request/2 with invalid data returns error changeset" do
      request = request_fixture()
      assert {:error, %Ecto.Changeset{}} = Logs.update_request(request, @invalid_attrs)
      assert request == Logs.get_request!(request.id)
    end

    test "delete_request/1 deletes the request" do
      request = request_fixture()
      assert {:ok, %Request{}} = Logs.delete_request(request)
      assert_raise Ecto.NoResultsError, fn -> Logs.get_request!(request.id) end
    end

    test "change_request/1 returns a request changeset" do
      request = request_fixture()
      assert %Ecto.Changeset{} = Logs.change_request(request)
    end
  end
end
