require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ComicRecord
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # config.to_prepare do
    #   Devise::SessionsController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }
    #   Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }
    #   Devise::ConfirmationsController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }
    #   Devise::UnlocksController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }            
    #   Devise::PasswordsController.layout proc{ |controller| user_signed_in? ? "application" : "devise" }        
    # end
    # config.i18n.default_locale = :ja 
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
