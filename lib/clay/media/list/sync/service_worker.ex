defmodule Clay.Media.List.Sync.ServiceWorker do
  @moduledoc """
  Oban worker that syncs books for one credential of a media list.
  Enqueued as fan-out from `Clay.Media.List.sync_books` update action.
  """

  use Oban.Worker,
    queue: :media_list_sync,
    unique: [
      period: 24 * 60 * 60,
      fields: [:args, :worker, :queue],
      states: Oban.Job.states()
    ]

  alias Clay.Media
  alias Clay.Media.List.Sync

  @impl Oban.Worker
  def perform(%Oban.Job{args: %{"list_id" => list_id, "credential_index" => index}}) do
    list =
      Media.get_list_by_id!(list_id,
        load: [:user, credentials: [:username, :password]],
        authorize?: false
      )

    credential = Enum.at(list.credentials, index)

    Sync.run(credential, list)
  end
end
