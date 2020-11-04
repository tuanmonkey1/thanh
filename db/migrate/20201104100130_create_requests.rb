class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :id
      t.integer :user_id
      t.integer :product_id
      t.integer :product_price

      t.timestamps
    end
  end
end
