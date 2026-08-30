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

  @progress_values [:unread, :read, :aborted]
  @accepted_attributes [:author, :series, :episode, :title, :progress, :rating]

  def progress_values, do: @progress_values

  postgres do
    table "books"
    repo Clay.Repo

    references do
      reference :list, index?: true, on_delete: :delete
    end
  end

  actions do
    defaults [:read, :update, :destroy]
    default_accept @accepted_attributes

    create :create do
      accept @accepted_attributes ++ [:list_id]

      change relate_actor(:user)
    end

    create :upsert_book do
      accept @accepted_attributes ++ [:list_id]

      upsert? true
      upsert_identity :unique_in_list
      upsert_fields []

      change relate_actor(:user)
    end

    read :filter do
      argument :list_id, :uuid, allow_nil?: false
      argument :search, :string

      argument :progress, {:array, :atom}, constraints: [items: [one_of: @progress_values]]

      pagination required?: false, offset?: true, keyset?: true

      prepare build(sort: [:author, :series, :episode, :title])

      filter expr(list_id == ^arg(:list_id))

      prepare fn query, _context ->
        query
        |> filter_by_search()
        |> filter_by_progress()
      end
    end
  end

  validations do
    validate present(:series), where: [present(:episode)]
  end

  attributes do
    uuid_primary_key :id

    attribute :author, :string, allow_nil?: false
    attribute :series, :string
    attribute :episode, :integer
    attribute :title, :string, allow_nil?: false

    attribute :progress, :atom,
      allow_nil?: false,
      default: :unread,
      constraints: [one_of: @progress_values]

    attribute :rating, :integer

    timestamps()
  end

  relationships do
    belongs_to :user, User, allow_nil?: false

    belongs_to :list, List, allow_nil?: false
  end

  identities do
    identity :unique_in_list, [:list_id, :author, :title, :episode], nils_distinct?: false
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

  defp filter_by_progress(query) do
    values = Ash.Query.get_argument(query, :progress) || []

    if values == [] or Enum.sort(values) == Enum.sort(@progress_values) do
      query
    else
      Ash.Query.filter(query, progress in ^values)
    end
  end
end
