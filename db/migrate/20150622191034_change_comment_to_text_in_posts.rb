class ChangeCommentToTextInPosts < ActiveRecord::Migration
  def change
    change_column :news_posts, :comment, :text
  end
end
