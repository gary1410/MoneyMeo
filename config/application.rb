require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MoneyMio
  class Application < Rails::Application

    config.autoload_paths += %W(#{config.root}/app/models/debts)

    config.active_record.raise_in_transactional_callbacks = true
  end
end
