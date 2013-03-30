# -*- coding: utf-8 -*-
FactoryGirl.define do
   sequence(:created_at, -5) {|n| n.days.ago }
  factory :user do
    username "simlegate"
    created_at 
  end
end
