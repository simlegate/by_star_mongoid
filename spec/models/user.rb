# -*- coding: utf-8 -*-
class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::ByStar
  field :username ,type: String
end
