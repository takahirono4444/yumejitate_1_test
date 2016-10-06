class RemoveUserIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :user_id, :string
  end
end
