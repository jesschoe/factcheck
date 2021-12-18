class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :upvotes
      t.integer :downvotes
      t.string :side
      t.integer :fact_check
      t.references :topic, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
