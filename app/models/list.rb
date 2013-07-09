class List < ActiveRecord::Base
  attr_accessible :name, :items

  has_many :list_items
  has_many :items, :through => :list_items
end
