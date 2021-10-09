class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :model
      t.datetime :pickup
      t.datetime :return_date
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
