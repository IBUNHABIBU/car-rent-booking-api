class AddFieldToCar < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :model, :string
    add_column :cars, :price, :string
  end
end
