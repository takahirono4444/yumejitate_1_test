class RemoveShitadoriFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :shitadori, :integer
  end
end
