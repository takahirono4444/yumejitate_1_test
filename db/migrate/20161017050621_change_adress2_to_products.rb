class ChangeAdress2ToProducts < ActiveRecord::Migration
def up
    change_column :products, :adress2, :string
  end

  #変更前の型
  def down
    change_column :products, :adress2, :text
  end
end
