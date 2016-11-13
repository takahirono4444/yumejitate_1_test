class RemoveSamplePriceFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :sample_price, :string
  end
end
