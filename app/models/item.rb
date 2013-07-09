class Item < ActiveRecord::Base
  attr_accessible :name, :completed, :lists

  has_many :list_items
  has_many :lists, :through => :list_items
end
