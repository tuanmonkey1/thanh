class CreateReviewHashtags < ActiveRecord::Migration[6.0]
  def change
    create_table :review_hashtags do |t|
      t.integer :review_id
      t.integer :hashtag_id

      t.timestamps
    end
  end
end
