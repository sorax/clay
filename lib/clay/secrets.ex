defmodule Clay.Secrets do
  @moduledoc false

  use AshAuthentication.Secret

  def secret_for([:authentication, :tokens, :signing_secret], Clay.Accounts.User, _opts, _context) do
    Application.fetch_env(:clay, :token_signing_secret)
  end
end
