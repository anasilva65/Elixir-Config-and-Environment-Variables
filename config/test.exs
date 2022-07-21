import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hello_config, HelloConfigWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "zav/vqRjf+Ng8h2VO/QGbpNgM/5Sz3vqpUwqc3nNq/YBmdrvVeTKKEanuTJkhi4y",
  server: false

# In test we don't send emails.
config :hello_config, HelloConfig.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

config :hello_config, welcome: "test!"

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
