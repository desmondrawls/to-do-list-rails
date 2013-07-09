class DropTableListsItems < ActiveRecord::Migration
  def up
  end

  def down
    drop_table :lists_items
  end
end
