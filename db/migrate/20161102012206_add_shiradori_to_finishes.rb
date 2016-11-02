class AddShiradoriToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :shitadori, :integer, null: false, default: 0, after: :product_kind
  end
end
