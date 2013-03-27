require "rspec"
require "mongoid"
require 'database_cleaner'
require 'factory_girl'

require File.expand_path '../../lib/by_star_mongoid/', __FILE__

Dir['./spec/models/*.rb'].map { |f| require f }

Dir['./by_star_mongoid/*.rb'].map { |f| require f }

FactoryGirl.find_definitions

zone = "UTC"
Time.zone = zone

Mongoid.configure do |config|
  config.connect_to('by_star_mongoid_test')
end

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.orm = "mongoid"
DatabaseCleaner.clean

RSpec.configure do |config|
  config.mock_with :rspec
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.orm = "mongoid"
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end   
end
