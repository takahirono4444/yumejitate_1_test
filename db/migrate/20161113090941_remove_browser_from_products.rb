class RemoveBrowserFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :Browser, :string
  end
end
