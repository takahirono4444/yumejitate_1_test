class AddCustomerAppearanceToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :customer_appearance, :string, null: false, default: 0, after: :customer_telephone
  end
end
