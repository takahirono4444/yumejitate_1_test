class RenameCustmerAdressColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :custmer_adress, :customer_adress
  end
end
