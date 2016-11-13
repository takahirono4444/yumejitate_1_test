class RemoveDeleteBoxFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :delete_box, :string
  end
end
