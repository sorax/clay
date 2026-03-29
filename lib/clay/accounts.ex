defmodule Clay.Accounts do
  @moduledoc false

  use Ash.Domain, otp_app: :clay

  resources do
    resource Clay.Accounts.Token
    resource Clay.Accounts.User
    resource Clay.Accounts.ApiKey
  end
end
