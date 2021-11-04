defmodule DiscussMigration.Repo do
  use Ecto.Repo,
    otp_app: :discuss_migration,
    adapter: Ecto.Adapters.Postgres
end
