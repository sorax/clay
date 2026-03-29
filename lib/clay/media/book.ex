defmodule Clay.Media.Book do
  @moduledoc """
  Represents a book in the media library.
  """

  use Ash.Resource,
    otp_app: :clay,
    domain: Clay.Media,
    data_layer: AshPostgres.DataLayer,
    fragments: [Clay.Media.Policies]

  require Ash.Query

  alias Clay.Accounts.User
  alias Clay.Media.List

  postgres do
    table "books"
    repo Clay.Repo

    references do
      reference :list, index?: true, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :update, :destroy]
    default_accept [:author, :series, :episode, :title, :read, :rating]

    create :create do
      accept [:author, :series, :episode, :title, :read, :rating, :list_id]

      change relate_actor(:user)
    end

    read :filter do
      argument :list_id, :uuid, allow_nil?: false
      argument :search, :string
      argument :read, :boolean

      pagination required?: false, offset?: true, keyset?: true

      prepare build(sort: [:author, :series, :episode, :title])

      filter expr(list_id == ^arg(:list_id))

      prepare fn query, _context ->
        query
        |> filter_by_search()
        |> filter_by_read_status()
      end
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :author, :string, allow_nil?: false
    attribute :series, :string
    attribute :episode, :integer
    attribute :title, :string, allow_nil?: false
    attribute :read, :boolean, allow_nil?: false, default: false
    attribute :rating, :integer
  end

  relationships do
    belongs_to :user, User, allow_nil?: false

    belongs_to :list, List, allow_nil?: false
  end

  defp filter_by_search(query) do
    case Ash.Query.get_argument(query, :search) do
      nil ->
        query

      "" ->
        query

      search ->
        search = "%#{search}%"

        Ash.Query.filter(
          query,
          ilike(title, ^search) or ilike(author, ^search) or ilike(series, ^search)
        )
    end
  end

  defp filter_by_read_status(query) do
    case Ash.Query.get_argument(query, :read) do
      nil -> query
      value -> Ash.Query.filter(query, read == ^value)
    end
  end
end
