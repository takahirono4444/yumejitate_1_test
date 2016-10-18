class RenameProductPraceColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :product_prace1, :product_place1
  end
end
