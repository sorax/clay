defmodule Clay.Media.List do
  @moduledoc """
  Represents a list in the media library.
  """

  use Ash.Resource,
    otp_app: :clay,
    domain: Clay.Media,
    data_layer: AshPostgres.DataLayer,
    fragments: [Clay.Media.Policies]

  alias Clay.Accounts.User
  alias Clay.Media.Book

  postgres do
    table "lists"
    repo Clay.Repo
  end

  actions do
    defaults [:read, :update, :destroy]
    default_accept [:title]

    create :create do
      change relate_actor(:user)
    end
  end

  attributes do
    uuid_primary_key :id

    attribute :title, :string, allow_nil?: false
  end

  relationships do
    belongs_to :user, User, allow_nil?: false

    has_many :books, Book do
      sort [:author, :series, :episode, :title]
    end
  end

  aggregates do
    count :books_count, :books
    count :books_read_count, :books, filter: expr(read == true)
    count :books_unread_count, :books, filter: expr(read == false)

    list :authors, :books, :author do
      sort :author
      uniq? true
    end

    list :series, :books, :series do
      sort :series
      uniq? true
    end
  end
end
