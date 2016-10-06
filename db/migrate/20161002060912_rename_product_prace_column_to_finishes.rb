class RenameProductPraceColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :product_prace1, :product_place1
  end
end
