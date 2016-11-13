class RemoveCustomerAppearanceFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :customer_appearance, :string
  end
end
