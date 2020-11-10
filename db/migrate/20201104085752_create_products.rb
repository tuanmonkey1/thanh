class CreateProducts < ActiveRecord::Migration[6.0]
  def change
<<<<<<< 70e47440952f4c313756cdbe3f7844c1cd30aaf8
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :price
      t.string :title

      t.timestamps
    end
=======
      create_table :products do |t|
            t.string :title
            t.text :description
            t.string :image_url
            t.decimal :price, :precision => 8, :scale => 2
      t.timestamps null: false
>>>>>>> product
  end
end
end
