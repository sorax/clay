defmodule Clay.Media.Book do
  use Ash.Resource, otp_app: :clay, domain: Clay.Media, data_layer: AshPostgres.DataLayer

  alias Clay.Media.List

  postgres do
    table "books"
    repo Clay.Repo

    references do
      reference :list, index?: true, on_delete: :delete
    end
  end

  actions do
    defaults [:create, :read, :update, :destroy]
    default_accept [:author, :series, :episode, :title, :read, :rating, :list_id]
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
    belongs_to :list, List, allow_nil?: false
  end
end
