class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.string :user_id
      t.string :link_id

      t.timestamps
    end
  end
end
