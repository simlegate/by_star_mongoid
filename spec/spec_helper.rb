require "rspec"
Dir['./by_star_mongoid/*.rb'].map { |f| require f }
Dir['./spec/models/*.rb'].map { |f| require f }
