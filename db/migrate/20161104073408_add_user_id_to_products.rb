class AddUserIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :user_id, :string, null: false, default: 0
  end
end
