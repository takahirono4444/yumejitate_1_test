class RenameCustmerAppearnceColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :customer_appearnce, :customer_appearance
  end
end
