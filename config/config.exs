# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :exlog,
  ecto_repos: [Exlog.Repo]

# Configures the endpoint
config :exlog, Exlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dF2R+ZVbMQz4RMdJ8MASYjozrdin9hLSftlF8nuLk0IY9bY8WiOkJ4AIO0tz7x7o",
  render_errors: [view: Exlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Exlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
