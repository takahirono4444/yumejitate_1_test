class RenameProductPrace4ColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :product_prace4, :product_place4
  end
end
