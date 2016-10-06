class RenameCustmerEmailColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :custmer_email, :customer_email
  end
end
