# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
load_config = File.join(Rails.root, 'config', 'initializers', 'load_config.rb')
load(load_config) if File.exists?(load_config)

Rails.application.initialize!
