# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :dispord_api,
  ecto_repos: [DispordApi.Repo]

# Configures the endpoint
config :dispord_api, DispordApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OMPiXSkvM9dn3I5t4M+kOhkgScskWDFBZApoeeYgnodJ2ImLQNlOX8yCF2lkLoGz",
  render_errors: [view: DispordApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DispordApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
