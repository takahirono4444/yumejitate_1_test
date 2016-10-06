class RenameProductPrace2ColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :product_prace2, :product_place2
  end
end
