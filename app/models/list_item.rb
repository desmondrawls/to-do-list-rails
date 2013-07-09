class ListItem < ActiveRecord::Base
  attr_accessible :item_id, :list_id

  belongs_to :list
  belongs_to :item
end