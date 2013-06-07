class AddParentIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :parent_id, :string
  end
end
