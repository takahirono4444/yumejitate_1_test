class AddProductIdToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :product_id, :string
  end
end
