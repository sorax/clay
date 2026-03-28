defmodule Clay.Media.Book do
  use Ash.Resource, otp_app: :clay, domain: Clay.Media, data_layer: AshPostgres.DataLayer

  postgres do
    table "books"
    repo Clay.Repo
  end

  actions do
    defaults [:create, :read, :update, :destroy]
    default_accept [:author, :series, :episode, :title, :read, :rating]
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
end
