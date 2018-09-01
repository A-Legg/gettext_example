# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gettext_example,
  ecto_repos: [GettextExample.Repo]

# Configures the endpoint
config :gettext_example, GettextExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "waG1yA1NxgWSzrPbLinB2jEfCSDqS8NEqkLBwZiT3whDk3ZVui4Ww6uAvvBbbpeA",
  render_errors: [view: GettextExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GettextExample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
