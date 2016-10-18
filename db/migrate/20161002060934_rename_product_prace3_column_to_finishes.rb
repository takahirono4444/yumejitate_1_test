class RenameProductPrace3ColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :product_prace3, :product_place3
  end
end
