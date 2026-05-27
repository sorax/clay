defmodule Clay.Media.Credential do
  @moduledoc false

  use Ash.Resource, data_layer: :embedded, extensions: [AshCloak]

  alias Clay.Media.Service

  cloak do
    vault(Clay.Vault)
    attributes([:username, :password])
    decrypt_by_default([:username, :password])
  end

  actions do
    defaults [:create, :read, :update]
    default_accept [:service, :username, :password]
  end

  attributes do
    attribute :service, Service, allow_nil?: false
    attribute :username, :string, sensitive?: true
    attribute :password, :string, sensitive?: true
  end
end
