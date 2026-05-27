defmodule Clay.Vault do
  @moduledoc """
  Cloak.Vault is used by `AshCloak` to encrypt sensitive resource attributes
  (e.g. credentials or passwords) at-rest.
  """

  use Cloak.Vault, otp_app: :clay
end
