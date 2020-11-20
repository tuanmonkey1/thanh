class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.integer :user_id
      t.integer :product_id
      t.integer :quantity
      t.string  :phone
      t.string  :address

      t.timestamps
    end
  end
end
