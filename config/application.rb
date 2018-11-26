require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Workspace
  class Application < Rails::Application
    config.time_zone = "Asia/Bangkok"
    config.active_record.schema_format = :sql
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
