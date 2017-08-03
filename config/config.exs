# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :ex_ample_cell, ExAmpleCell.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "j2xzUx/lQbQM+U5qiCl1W0q493DEs27kBhNnNv/gDcdyOE5X4IgTxvmp7NoJaA6l",
  render_errors: [view: ExAmpleCell.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ExAmpleCell.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
