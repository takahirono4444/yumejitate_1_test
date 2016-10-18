class RenameCustmerAdressColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :custmer_adress, :customer_adress
  end
end
