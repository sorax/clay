defmodule Clay.Media.List.Sync.ServiceWorkerTest do
  use Clay.DataCase, async: false
  use Oban.Testing, repo: Clay.Repo

  import Clay.Generator

  alias Clay.Media
  alias Clay.Media.List.Sync.ServiceWorker

  test "perform/1 upserts books for the credential at the given index" do
    Req.Test.stub(Clay.Stub.StadtbibliothekRostock, Clay.StadtbibliothekRostockPlug)

    user = generate(user())

    list = generate(list(user, credentials: [credential()]))

    assert :ok =
             perform_job(ServiceWorker, %{
               "list_id" => list.id,
               "credential_index" => 0
             })

    updated = Media.get_list_by_id!(list.id, load: [:books], actor: user)

    assert [%{author: "Habschick, Anja"}] = updated.books
  end
end
