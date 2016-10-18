class RenameCustmerAppearnceColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :customer_appearnce, :customer_appearance
  end
end
