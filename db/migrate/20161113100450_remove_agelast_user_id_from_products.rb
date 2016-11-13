class RemoveAgelastUserIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :agelast_user_id, :string
  end
end
