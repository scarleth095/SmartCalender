require_relative 'boot'

require 'rails/all'

require 'weather_man'
 WeatherMan.partner_id = '0123456789'
WeatherMan.license_key = '0123456789abcdef'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SmartCalender
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
