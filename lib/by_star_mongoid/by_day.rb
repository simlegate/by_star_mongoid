module Mongoid
  module ByStar
    module ByDay
      extend ActiveSupport::Concern

      included do
      end

      def by_day
	puts "by_day"
      end

      def today(options={})
        by_day_Time(Time.now,options) 
      end
 
      private

      def by_day_Time(time, options)
        between(time.beginning_of_day, time.end_of_day, options)
      end
    end
  end
end
