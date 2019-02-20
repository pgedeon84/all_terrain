class AddCityToAtvs < ActiveRecord::Migration[5.2]
  def change
    add_column :atvs, :city, :string
  end
end
