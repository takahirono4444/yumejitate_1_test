class ChangeCustomerAdressToProducts < ActiveRecord::Migration
def up
    change_column :products, :customer_adress, :string
  end

  #変更前の型
  def down
    change_column :products, :customer_adress, :text
  end
end
