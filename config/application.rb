require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module BaseApp
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g|
      g.test_framework :rspec
      g.integration_tool :rspec
    end
  end
end
