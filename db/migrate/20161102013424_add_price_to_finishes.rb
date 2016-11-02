class AddPriceToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :price, :integer, null: false, default: 0, after: :uchikin
  end
end
