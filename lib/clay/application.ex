defmodule Clay.Application do
  # See https://elixir.hexdocs.pm/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ClayWeb.Telemetry,
      Clay.Repo,
      Clay.Vault,
      {DNSCluster, query: Application.get_env(:clay, :dns_cluster_query) || :ignore},
      {Oban,
       AshOban.config(
         Application.fetch_env!(:clay, :ash_domains),
         Application.fetch_env!(:clay, Oban)
       )},
      {Phoenix.PubSub, name: Clay.PubSub},
      {Task, &schedule_boot_sync/0},
      # Start a worker by calling: Clay.Worker.start_link(arg)
      # {Clay.Worker, arg},
      # Start to serve requests, typically the last entry
      ClayWeb.Endpoint,
      {AshAuthentication.Supervisor, [otp_app: :clay]}
    ]

    # See https://elixir.hexdocs.pm/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Clay.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ClayWeb.Endpoint.config_change(changed, removed)
    :ok
  end

  defp schedule_boot_sync do
    if Application.fetch_env!(:clay, :run_boot_sync?) do
      AshOban.schedule(Clay.Media.List, :sync_books)
    end
  end
end
