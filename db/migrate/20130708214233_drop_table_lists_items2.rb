class DropTableListsItems2 < ActiveRecord::Migration
  def change
    drop_table :lists_items
  end
end
