require File.expand_path('../boot', __FILE__)

require 'rails/all'



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    
    #added 4/14 justin - changes from https://gist.github.com/AdrianTeh/3561310
      config.middleware.insert_before Warden::Manager, Rack::Cors do
      allow do
        origins '*'
        resource '/*',
        :headers => :any,
        :methods => [:get, :post, :put, :options, :delete]
      end
    end
    
  end
end
