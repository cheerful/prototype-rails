require 'rails'
require 'active_support'

module PrototypeRails
  class Engine < Rails::Engine
    config.after_initialize do
      require 'prototype-rails/on_load_action_controller'

      require 'prototype-rails/on_load_action_view'
    end
  end
end

