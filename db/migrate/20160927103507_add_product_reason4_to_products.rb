class AddProductReason4ToProducts < ActiveRecord::Migration
  def change
    add_column :products, :product_reason4, :string, after: :product_place4
  end
end
