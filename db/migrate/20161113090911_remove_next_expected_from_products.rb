class RemoveNextExpectedFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :next_expected, :string
  end
end
