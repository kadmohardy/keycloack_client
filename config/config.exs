# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :keycloak_client,
  ecto_repos: [KeycloakClient.Repo]

# Configures the endpoint
config :keycloak_client, KeycloakClientWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: KeycloakClientWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: KeycloakClient.PubSub,
  live_view: [signing_salt: "gRaKbzc0"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :keycloak,
  realm: "myrealm",
  site: "http://localhost:8080/auth",
  client_id: "myclient",
  client_secret: "19020cc9-a98b-4bcf-8a55-3a31916c04b0"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
