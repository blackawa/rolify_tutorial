class AddRelationToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user_id, :integer, null: false, default: 0
    add_index :users, :user_id
  end
end
