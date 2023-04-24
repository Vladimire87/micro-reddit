# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps
    end
    add_index :posts, :user_id
  end
end
