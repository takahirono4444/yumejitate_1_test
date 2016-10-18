class ChangeAdress1ToProducts < ActiveRecord::Migration
  def up
    change_column :products, :adress1, :string
  end

  #変更前の型
  def down
    change_column :products, :adress1, :text
  end

end
