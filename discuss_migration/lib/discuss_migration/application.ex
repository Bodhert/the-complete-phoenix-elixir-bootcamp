defmodule DiscussMigration.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      DiscussMigration.Repo,
      # Start the Telemetry supervisor
      DiscussMigrationWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: DiscussMigration.PubSub},
      # Start the Endpoint (http/https)
      DiscussMigrationWeb.Endpoint
      # Start a worker by calling: DiscussMigration.Worker.start_link(arg)
      # {DiscussMigration.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: DiscussMigration.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    DiscussMigrationWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
