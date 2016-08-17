require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module DisruptionsMap
  class Application < Rails::Application
    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')
    config.autoload_paths += Dir[Rails.root.join('app', 'api', '*')]
    config.active_job.queue_adapter = :sidekiq
  end
end
