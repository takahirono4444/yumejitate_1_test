class AddUserIdToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :user_id, :string, null: false, default: 0
  end
end
