# -*- coding: utf-8 -*-
FactoryGirl.define do
  factory :user do
    username "simlegate"

    factory :today do
    end

    factory :yesterday do
      created_at Time.now.yesterday
    end

    factory :tomorrow do
      created_at Time.now.tomorrow
    end
  end
end
