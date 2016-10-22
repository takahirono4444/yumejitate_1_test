class AddUserIdToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :user_id, :string
  end
end
