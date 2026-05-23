defmodule Clay.Media.List.SyncTest do
  use Clay.DataCase, async: true

  import Clay.Generator

  alias Clay.Media
  alias Clay.Media.Credential
  alias Clay.Media.List
  alias Clay.Media.List.Sync

  describe "run/2 with stadtbibliothek_rostock" do
    setup do
      Req.Test.stub(Clay.Stub.StadtbibliothekRostock, Clay.StadtbibliothekRostockPlug)

      user = generate(user())

      list = generate(list(user, credentials: [credential()]))

      list =
        Media.get_list_by_id!(list.id,
          load: [:user, credentials: [:username, :password]],
          authorize?: false
        )

      [credential] = list.credentials

      %{user: user, list: list, credential: credential}
    end

    test "upserts loans into the list", %{user: user, list: list, credential: credential} do
      assert :ok = Sync.run(credential, list)

      updated = Media.get_list_by_id!(list.id, load: [:books], actor: user)

      assert [
               %{
                 author: "Habschick, Anja",
                 title: "Gefährliche Geburtstagsgrüße",
                 series: "Lucy Longfinger – einfach unfassbar!",
                 episode: 1,
                 read: true
               }
             ] = updated.books
    end

    test "is idempotent across runs", %{user: user, list: list, credential: credential} do
      assert :ok = Sync.run(credential, list)
      assert :ok = Sync.run(credential, list)

      updated = Media.get_list_by_id!(list.id, load: [:books], actor: user)

      assert [_only_one] = updated.books
    end
  end

  describe "run/2 with unknown service" do
    test "returns unknown_service error" do
      credential = %Credential{service: :other, username: "u", password: "p"}
      list = %List{}

      assert {:error, {:unknown_service, :other}} = Sync.run(credential, list)
    end
  end
end
