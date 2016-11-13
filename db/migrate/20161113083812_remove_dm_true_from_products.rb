class RemoveDmTrueFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :DM_true, :string
  end
end
