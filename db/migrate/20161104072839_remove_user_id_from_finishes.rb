class RemoveUserIdFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :user_id, :string
  end
end
