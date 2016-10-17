class ChangePayStringToProducts < ActiveRecord::Migration
def up
    change_column :products, :pay_string, :string
  end

  #変更前の型
  def down
    change_column :products, :pay_string, :text
  end
end
