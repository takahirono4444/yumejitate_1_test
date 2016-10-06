class RenameCustmerEmailColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :custmer_email, :customer_email
  end
end
