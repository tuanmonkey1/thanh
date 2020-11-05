class CreateHashtags < ActiveRecord::Migration[6.0]
  def change
    create_table :hashtags do |t|
      t.string :show_post
      t.string :delete_post
      t.string :create_hashtag
      t.string :search_post

      t.timestamps
    end
  end
end
