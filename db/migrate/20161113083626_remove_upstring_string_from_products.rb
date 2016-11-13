class RemoveUpstringStringFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :upstring_string, :string
  end
end
