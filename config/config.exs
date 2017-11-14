# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :clearbit_demo,
  ecto_repos: [ClearbitDemo.Repo]

# Configures the endpoint
config :clearbit_demo, ClearbitDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4EyYxsuQf8VvBvZsYeT3GDXPBNo1sbT7rTtc6InuKmMf2Y4DougQgZJiLOES7f7U",
  render_errors: [view: ClearbitDemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ClearbitDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
