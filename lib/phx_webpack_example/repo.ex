defmodule PhxWebpackExample.Repo do
  use Ecto.Repo,
    otp_app: :phx_webpack_example,
    adapter: Ecto.Adapters.Postgres
end
