# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_webpack_example,
  ecto_repos: [PhxWebpackExample.Repo]

# Configures the endpoint
config :phx_webpack_example, PhxWebpackExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zVqg8Y7pyKjBQEdZ0l/6ZhntZH7keHdVY3ItYC8kwuwNIUz1n+z94lxULWqog9UM",
  render_errors: [view: PhxWebpackExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhxWebpackExample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
