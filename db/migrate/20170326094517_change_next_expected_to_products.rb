class ChangeNextExpectedToProducts < ActiveRecord::Migration
  def up
    change_column :products, :next_expected, :string, null: false, default: 0
  end

  #変更前の型
  def down
    change_column :products, :next_expected, :string, null: false
  end
end
