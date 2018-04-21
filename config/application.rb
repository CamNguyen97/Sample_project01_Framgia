require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you"ve limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppTestGem
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.i18n.default_locale = :en
    config.autoload_paths += %W(#{config.root}/lib)
    config.load_defaults 5.1
    config.assets.precompile += %w(page_admin)
    config.assets.precompile += %w(page_home)
    # Settings in config/environments/*
    # take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.generators do |g|
      g.template_engine false
      g.test_framework false
      g.assets false
      g.helper false
    end
  end
end
