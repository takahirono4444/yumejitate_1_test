class RemoveCustomerAppearanceFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :customer_appearance, :string
  end
end
