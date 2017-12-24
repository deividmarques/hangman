# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hangman,
  ecto_repos: [Hangman.Repo]

# Configures the endpoint
config :hangman, HangmanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cV+jS2honHs5a3S4Iz5g+FcaqV5UPvEoMd6PeaRZFBe55+PpANJnYMdraQWF49Wd",
  render_errors: [view: HangmanWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hangman.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
