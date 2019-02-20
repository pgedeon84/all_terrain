class AddDescriptionToAtvs < ActiveRecord::Migration[5.2]
  def change
    add_column :atvs, :decription, :text
  end
end
