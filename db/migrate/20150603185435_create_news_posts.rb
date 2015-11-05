class CreateNewsPosts < ActiveRecord::Migration
  def change
    create_table :news_posts do |t|
      t.integer :user_id
      t.string :title
      t.string :comment

      t.timestamps null: false
    end
  end
end
