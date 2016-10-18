class ChangeFreeSpace1ToProducts < ActiveRecord::Migration
def up
    change_column :products, :free_space1, :string
  end

  #変更前の型
  def down
    change_column :products, :free_space1, :text
  end
end
