class CreateRlationships < ActiveRecord::Migration[6.0]
  def change
    create_table :rlationships do |t|
      t.integer :id
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
  end
end
