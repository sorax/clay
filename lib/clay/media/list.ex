defmodule Clay.Media.List do
  use Ash.Resource, otp_app: :clay, domain: Clay.Media, data_layer: AshPostgres.DataLayer

  alias Clay.Media.Book

  postgres do
    table "lists"
    repo Clay.Repo
  end

  actions do
    defaults [:create, :read, :update, :destroy]
    default_accept [:title]
  end

  attributes do
    uuid_primary_key :id

    attribute :title, :string, allow_nil?: false
  end

  relationships do
    has_many :books, Book do
      sort [:author, :series, :episode, :title]
    end
  end
end
