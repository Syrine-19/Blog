require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Sirine
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults '7.0'
    config.middleware.use ActionDispatch::Cookies

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.assets.paths << "#{Rails.root}/app/assets/videos"
    # config.active_job.queue_adapter = :resque
    config.generators.system_tests = nil
    config.generators do |g|
      g.test_framework = :respec
    end


  end
end
