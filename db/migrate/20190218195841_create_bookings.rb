class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :atv, foreign_key: true
      t.date :from
      t.date :to
      t.boolean :confirmed

      t.timestamps
    end
  end
end
