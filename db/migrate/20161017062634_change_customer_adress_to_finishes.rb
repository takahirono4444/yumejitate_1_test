class ChangeCustomerAdressToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :customer_adress, :string
  end

  #変更前の型
  def down
    change_column :finishes, :customer_adress, :text
  end
end
