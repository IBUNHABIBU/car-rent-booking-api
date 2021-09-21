class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :engine
      t.string :year
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
