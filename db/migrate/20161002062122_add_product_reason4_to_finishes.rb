class AddProductReason4ToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :product_reason4, :string, after: :product_place4
  end
end
