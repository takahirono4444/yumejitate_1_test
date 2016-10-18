class RenameProductPrace4ColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :product_prace4, :product_place4
  end
end
