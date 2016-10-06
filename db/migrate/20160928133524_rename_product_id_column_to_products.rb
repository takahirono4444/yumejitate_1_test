class RenameProductIdColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :product_id, :syohin_id
  end
end
