class AddCoordinatesToAtvs < ActiveRecord::Migration[5.2]
  def change
    add_column :atvs, :latitude, :float
    add_column :atvs, :longitude, :float
  end
end
