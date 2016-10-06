class RenameUserIdColumnProducts < ActiveRecord::Migration
  def change
    rename_column :products, :user_id, :member_id
  end
end
