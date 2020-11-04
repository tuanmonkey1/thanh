class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :id
      t.integer :product_id
      t.string :title
      t.string :content


      t.timestamps
    end
  end
end
