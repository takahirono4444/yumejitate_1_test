class AddUchikinToProducts < ActiveRecord::Migration
  def change
    add_column :products, :uchikin, :integer, null: false, default: 0, after: :shitadori
  end
end
