class RemoveAgelastUserIdFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :agelast_user_id, :string
  end
end
