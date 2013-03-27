require "mongoid"
require "by_star_mongoid/version"
require "by_star_mongoid/by_day"
module Mongoid
  module ByStar
      extend ActiveSupport::Concern

      included do
        include ByDay
      end

      module ClassMethods

	def by_star_field(field=nil)
	  @by_star_field ||= field
	  @by_star_field || "created_at"
	end

	def between_at(start, finish, options={})
	  field = options[:field] || by_star_field
	  scope = between("#{field}" => [start,finish])
	  scope = scope.order(options[:order]) if options[:order]
	  scope
	end

	def time_klass(time)
	  case time
	  when ActiveSupport::TimeWithZone
	    Time
	  else
	    time.class
	  end
	end
      end
  end
end
