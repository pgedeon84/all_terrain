class ChangeColumnNameDecription < ActiveRecord::Migration[5.2]
  def change
    rename_column :atvs ,:decription, :description
  end
end
