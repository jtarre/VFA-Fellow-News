class AddIndexToComments < ActiveRecord::Migration
  def up
    add_index :comments, :ancestry
  end
  
  def down
    remove_index :comments, :ancestry
  end
end
