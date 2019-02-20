class AddPhotoToAtvs < ActiveRecord::Migration[5.2]
  def change
    add_column :atvs, :photo, :string
  end
end
