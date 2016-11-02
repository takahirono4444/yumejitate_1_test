class AddShitadoriToProducts < ActiveRecord::Migration
  def change
    add_column :products, :shitadori, :integer, null: false, default: 0, after: :product_kind
  end
end
