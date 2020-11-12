class CreateProducts < ActiveRecord::Migration[6.0]
  def change
      create_table :products do |t|
            t.string :title
            t.text :description
            t.text :content
            t.integer :distribute
            t.decimal :price, :precision => 8, :scale => 2
      t.timestamps null: false
  end
end
end
