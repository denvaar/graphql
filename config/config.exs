# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :graphql_server,
  ecto_repos: [GraphqlServer.Repo]

# Configures the endpoint
config :graphql_server, GraphqlServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bOfn1HHfKT6edoUcRQkeWp8+LqnVJ813N9dpQB8pLd0xLYxYOd5vt9Js6YAvpXAy",
  render_errors: [view: GraphqlServerWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GraphqlServer.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
