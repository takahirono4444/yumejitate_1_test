class RenameNecknameToUsers < ActiveRecord::Migration
  def change
    rename_column :users, :neckname, :nickname
  end
end
