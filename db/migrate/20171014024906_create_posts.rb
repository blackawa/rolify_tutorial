class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :content
      t.references :author, foreign_key: true

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :author_id
  end
end
