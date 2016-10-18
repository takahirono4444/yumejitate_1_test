class RenameProductPrace3ColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :product_prace3, :product_place3
  end
end
