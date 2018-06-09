class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :content
      t.timestamp :publish_date
      t.boolean :published
      t.timestamps
    end
  end
end
