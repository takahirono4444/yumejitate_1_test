class AddNextExpectedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :next_expected, :string, null: false, after: :customer_appearance
  end
end
