class RemoveUchikinFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :uchikin, :integer
  end
end
