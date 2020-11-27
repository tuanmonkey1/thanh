class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.integer :review_id
      t.integer :user_id
      t.integer :star, default: 0

      t.timestamps
    end
  end
end
