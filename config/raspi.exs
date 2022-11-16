import Config

# config/runtime.exs is executed for all environments, including
# during releases. It is executed after compilation and before the
# system starts, so it is typically used to load production configuration
# and secrets from environment variables or elsewhere. Do not define
# any compile-time configuration in here, as it won't be applied.
# The block below contains prod specific runtime configuration.

# ## Using releases
#
# If you use `mix release`, you need to explicitly enable the server
# by passing the PHX_SERVER=true when you start it:
#
#     PHX_SERVER=true bin/clay start
#
# Alternatively, you can use `mix phx.gen.release` to generate a `bin/server`
# script that automatically sets the env var above.
if System.get_env("PHX_SERVER") do
  config :clay, ClayWeb.Endpoint, server: true
end

if config_env() == :prod do
  database_url =
    System.get_env("DATABASE_URL") ||
      raise """
      environment variable DATABASE_URL is missing.
      For example: ecto://USER:PASS@HOST/DATABASE
      """

  maybe_ipv6 = if System.get_env("ECTO_IPV6"), do: [:inet6], else: []

  config :clay, Clay.Repo,
    # ssl: true,
    url: database_url,
    pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
    socket_options: maybe_ipv6

  # The secret key base is used to sign/encrypt cookies and other secrets.
  # A default value is used in config/dev.exs and config/test.exs but you
  # want to use a different value for prod and you most likely don't want
  # to check this value into version control, so we use an environment
  # variable instead.
  secret_key_base =
    System.get_env("SECRET_KEY_BASE") ||
      raise """
      environment variable SECRET_KEY_BASE is missing.
      You can generate one by calling: mix phx.gen.secret
      """

  http_port = String.to_integer(System.get_env("HTTP_PORT") || "80")
  https_port = String.to_integer(System.get_env("HTTPS_PORT") || "443")
  check_origin = System.get_env("DOMAINS") |> String.split(",") |> Enum.map(&"//*.#{&1}")

  config :clay, ClayWeb.Endpoint,
    # url: [host: nil, port: https_port, scheme: "https"],
    url: [host: nil],
    http: [
      # Enable IPv6 and bind on all interfaces.
      # Set it to  {0, 0, 0, 0, 0, 0, 0, 1} for local network only access.
      # See the documentation on https://hexdocs.pm/plug_cowboy/Plug.Cowboy.html
      # for details about using IPv6 vs IPv4 and loopback vs public addresses.
      ip: {0, 0, 0, 0, 0, 0, 0, 0},
      port: http_port
    ],
    https: [
      port: https_port,
      cipher_suite: :strong,
      keyfile: System.get_env("SSL_KEY_PATH"),
      certfile: System.get_env("SSL_CERT_PATH")
    ],
    secret_key_base: secret_key_base,
    check_origin: check_origin

  # Configures file storage
  storage_path =
    System.get_env("STORAGE_PATH") ||
      raise """
      environment variable STORAGE_PATH is missing.
      For example: /var/www/uploads
      """

  config :clay, :storage, path: storage_path

  # ## Configuring the mailer
  #
  # In production you need to configure the mailer to use a different adapter.
  # Also, you may need to configure the Swoosh API client of your choice if you
  # are not using SMTP. Here is an example of the configuration:
  #
  config :clay, Clay.Mailer,
    adapter: Swoosh.Adapters.SMTP,
    relay: System.get_env("SMTP_SERVER"),
    username: System.get_env("SMTP_USERNAME"),
    password: System.get_env("SMTP_PASSWORD"),
    ssl: false,
    tls: :always,
    auth: :always,
    port: System.get_env("SMTP_PORT"),
    retries: 2,
    no_mx_lookups: false

  #     config :clay, Clay.Mailer,
  #       adapter: Swoosh.Adapters.Mailgun,
  #       api_key: System.get_env("MAILGUN_API_KEY"),
  #       domain: System.get_env("MAILGUN_DOMAIN")
  #
  # For this example you need include a HTTP client required by Swoosh API client.
  # Swoosh supports Hackney and Finch out of the box:
  #
  #     config :swoosh, :api_client, Swoosh.ApiClient.Hackney
  #
  # See https://hexdocs.pm/swoosh/Swoosh.html#module-installation for details.

  config :dart_sass,
    path: System.get_env("MIX_SASS_PATH")
end
