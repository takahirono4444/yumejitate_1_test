class AddPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price, :integer, null: false, default: 0, after: :uchikin
  end
end
