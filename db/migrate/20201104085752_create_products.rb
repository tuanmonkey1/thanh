class CreateProducts < ActiveRecord::Migration[6.0]
  def change
      create_table :products do |t|
            t.string :title
            t.text :technology
            t.text :description
            t.text :content
            t.integer :build_time
            t.integer :distribute
            t.decimal :price, :precision => 8, :scale => 2
            t.text :driver_type
            t.text :driver_configuration
            t.text :frequency_response
            t.text :sensitivity
            t.text :impedance
            t.text :crossover
            t.text :isolation
      t.timestamps null: false
  end
end
end
