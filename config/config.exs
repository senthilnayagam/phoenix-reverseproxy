# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_reverseproxy,
  ecto_repos: [PhoenixReverseproxy.Repo]

# Configures the endpoint
config :phoenix_reverseproxy, PhoenixReverseproxy.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IDO27sTDWbvyf/OXLYdZX6IGwRX3n2wKixnDP51e/UGCdwlk6hKNJajY4/tueCNh",
  render_errors: [view: PhoenixReverseproxy.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixReverseproxy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
