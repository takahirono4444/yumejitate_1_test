class RemoveSamplePriceFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :sample_price, :string
  end
end
