ENV['RAILS_ENV'] ||= 'test'

PROJECT_ROOT = File.expand_path('../..', __FILE__)
$LOAD_PATH << File.join(PROJECT_ROOT, 'lib')

require 'rails/all'
require 'rails/test_help'
require 'bundler'

Bundler.require

require 'diesel/testing'
require 'rspec/rails'
require 'bourne'
require 'timecop'
require 'factory_girl_rails'
require 'shoulda-matchers'
require 'forms_on_the_fly'

Dir[Rails.root.join('spec/support/**/*.rb')].each {|f| require f}

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
  config.mock_with :mocha
  config.use_transactional_fixtures = true
end

