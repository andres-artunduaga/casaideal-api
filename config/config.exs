# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :casaideal,
  ecto_repos: [Casaideal.Repo]

# Configures the endpoint
config :casaideal, Casaideal.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EFpBdAl1cMFeLC74ILJsjevyfMWpfpDgIiGAjYQVvlbz9Z9P6B0/PzkqMH6KexX6",
  render_errors: [view: Casaideal.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Casaideal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
