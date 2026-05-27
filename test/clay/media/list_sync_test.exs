defmodule Clay.Media.ListSyncTest do
  use Clay.DataCase, async: false
  use Oban.Testing, repo: Clay.Repo

  import Clay.Generator

  describe "AshOban scheduler" do
    setup do
      %{user: generate(user())}
    end

    test "enqueues a sync_books job for each list with credentials", %{user: user} do
      list = generate(list(user, credentials: [credential(), credential()]))
      _empty = generate(list(user))

      AshOban.schedule(Clay.Media.List, :sync_books)

      [scheduler_job] = all_enqueued(worker: Clay.Media.List.Sync.Scheduler)

      assert :ok = perform_job(Clay.Media.List.Sync.Scheduler, scheduler_job.args)

      assert_enqueued(
        worker: Clay.Media.List.Sync.Worker,
        args: %{"primary_key" => %{"id" => list.id}}
      )

      assert [worker_job] = all_enqueued(worker: Clay.Media.List.Sync.Worker)

      assert {:ok, _list} = perform_job(Clay.Media.List.Sync.Worker, worker_job.args)

      service_jobs = all_enqueued(worker: Clay.Media.List.Sync.ServiceWorker)
      assert length(service_jobs) == 2

      assert Enum.all?(service_jobs, fn job -> job.args["list_id"] == list.id end)
      assert Enum.map(service_jobs, & &1.args["credential_index"]) |> Enum.sort() == [0, 1]
    end

    test "does not enqueue a duplicate worker job within the unique window", %{user: user} do
      _list = generate(list(user, credentials: [credential()]))

      AshOban.schedule(Clay.Media.List, :sync_books)
      AshOban.schedule(Clay.Media.List, :sync_books)

      scheduler_jobs = all_enqueued(worker: Clay.Media.List.Sync.Scheduler)

      Enum.each(scheduler_jobs, fn job ->
        assert :ok = perform_job(Clay.Media.List.Sync.Scheduler, job.args)
      end)

      assert [_only_one] = all_enqueued(worker: Clay.Media.List.Sync.Worker)
    end
  end
end
