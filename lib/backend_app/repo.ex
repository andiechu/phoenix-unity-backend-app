defmodule BackendApp.Repo do
  use Ecto.Repo,
    otp_app: :backend_app,
    adapter: Ecto.Adapters.Postgres
end
