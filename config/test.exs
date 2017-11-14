use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :clearbit_demo, ClearbitDemoWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :clearbit_demo, ClearbitDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "clearbit_demo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
