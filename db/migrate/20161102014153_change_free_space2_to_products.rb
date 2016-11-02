class ChangeFreeSpace2ToProducts < ActiveRecord::Migration
  def up
    change_column :products, :free_space2, :string
  end

  #変更前の型
  def down
    change_column :products, :free_space2, :text
  end
end
