Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Mr Kobot"

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  #config.robot.adapter = :shell
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']

  ## Example: Set options for the chosen adapter.
  # config.adapters.username = "myname"
  # config.adapters.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port = ENV["PORT"]

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"

  config.handlers.imgflip.username = ENV['IMGFLIP_USERNAME']
  config.handlers.imgflip.password = ENV['IMGFLIP_PASSWORD']

  config.handlers.giphy.api_key = "dc6zaTOxFJmzC" # Public beta key

  config.handlers.forecast.api_key = ENV['FORECAST_API_KEY']

  config.handlers.time.apikey = ENV['TIME_API_KEY']
end
