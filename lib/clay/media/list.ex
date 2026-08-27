defmodule Clay.Media.List do
  @moduledoc """
  Represents a list in the media library.
  """

  use Ash.Resource,
    otp_app: :clay,
    domain: Clay.Media,
    data_layer: AshPostgres.DataLayer,
    extensions: [AshOban],
    fragments: [Clay.Media.Policies]

  alias Clay.Accounts.User
  alias Clay.Media.Book
  alias Clay.Media.Credential
  alias Clay.Media.List.Sync.ServiceWorker

  postgres do
    table "lists"
    repo Clay.Repo
  end

  oban do
    triggers do
      trigger :sync_books do
        action :sync_books
        scheduler_cron "0 3 * * *"
        queue :media_list_sync
        worker_read_action :read
        where expr(has_credentials?)
        trigger_once? true
        worker_module_name Clay.Media.List.Sync.Worker
        scheduler_module_name Clay.Media.List.Sync.Scheduler

        worker_opts unique: [
                      period: 24 * 60 * 60,
                      fields: [:args, :worker, :queue],
                      states: Oban.Job.states()
                    ]
      end
    end
  end

  actions do
    defaults [:read, :update, :destroy]
    default_accept [:title, :credentials]

    read :list do
      prepare build(default_sort: [title: :asc])

      pagination keyset?: true, offset?: true, required?: false, countable: true
    end

    create :create do
      change relate_actor(:user)
    end

    update :sync_books do
      require_atomic? false
      accept []

      change after_action(&enqueue_service_workers/3)
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :title, :string, allow_nil?: false
    attribute :credentials, {:array, Credential}, allow_nil?: false, default: []

    timestamps()
  end

  relationships do
    belongs_to :user, User, allow_nil?: false

    has_many :books, Book do
      sort [:author, :series, :episode, :title]
    end
  end

  calculations do
    calculate :has_credentials?, :boolean, expr(fragment("cardinality(?) > 0", credentials))
  end

  aggregates do
    count :books_count, :books
    count :books_read_count, :books, filter: expr(read == true)
    count :books_unread_count, :books, filter: expr(read == false)

    list :authors, :books, :author do
      sort :author
      uniq? true
    end
  end

  defp enqueue_service_workers(_changeset, list, _context) do
    list.credentials
    |> Enum.with_index()
    |> Enum.map(fn {_credential, index} ->
      ServiceWorker.new(%{list_id: list.id, credential_index: index})
    end)
    |> Oban.insert_all()

    {:ok, list}
  end
end
