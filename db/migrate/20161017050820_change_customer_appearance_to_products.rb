class ChangeCustomerAppearanceToProducts < ActiveRecord::Migration
def up
    change_column :products, :customer_appearance, :string
  end

  #変更前の型
  def down
    change_column :products, :customer_appearance, :text
  end
end
