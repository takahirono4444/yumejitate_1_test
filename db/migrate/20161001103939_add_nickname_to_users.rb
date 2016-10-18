class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :neckname, :string
  end
end
