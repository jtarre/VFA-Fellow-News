class Addparentidtocomment < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :parent_id
    end
  end

  
  def up
  end

  def down
  end
end
