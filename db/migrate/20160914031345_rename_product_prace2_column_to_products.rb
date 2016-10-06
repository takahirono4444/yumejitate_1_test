class RenameProductPrace2ColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :product_prace2, :product_place2
  end
end
