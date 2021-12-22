import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :clay, Clay.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "clay_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :clay, ClayWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "88pLTlRA9oQy0uzHsMVPP2CLytfYPbaVNAtmA022mNJY4uMO7kjT3InYFnuoVG66",
  server: false

# In test we don't send emails.
config :clay, Clay.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
