class ChangeCustomerAppearanceToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :customer_appearance, :string
  end

  #変更前の型
  def down
    change_column :finishes, :customer_appearance, :text
  end
end
