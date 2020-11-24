class CreateRates < ActiveRecord::Migration[6.0]
  def change
  	belongs to :riview
    create_table :rates do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :star

      t.timestamps
    end
  end
end
