class AddDistributeToProducts < ActiveRecord::Migration[6.0]
  def change
  	    add_column :products, :distribute, :string
  end
end
