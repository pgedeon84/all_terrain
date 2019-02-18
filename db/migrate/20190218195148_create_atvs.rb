class CreateAtvs < ActiveRecord::Migration[5.2]
  def change
    create_table :atvs do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
