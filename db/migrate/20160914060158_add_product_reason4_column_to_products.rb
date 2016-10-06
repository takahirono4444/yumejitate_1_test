class AddProductReason4ColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_reason4, :string
  end
end
