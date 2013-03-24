module Mongoid
  module ByStar
    class Criteria <  Mongoid::Criteria
      include Mongoid::ByStar::ByDay
    end
  end
end
