class AddTopPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :top_post, :boolean, default: false
  end
end
