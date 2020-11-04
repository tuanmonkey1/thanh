class CreateRates < ActiveRecord::Migration[6.0]
  def change
    create_table :rates do |t|
      t.string :star

      t.timestamps
    end
  end
end
