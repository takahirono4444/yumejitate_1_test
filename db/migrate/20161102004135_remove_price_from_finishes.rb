class RemovePriceFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :price, :integer
  end
end
