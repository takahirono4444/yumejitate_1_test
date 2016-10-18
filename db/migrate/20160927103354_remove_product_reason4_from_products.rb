class RemoveProductReason4FromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :product_reason4, :string
  end
end
