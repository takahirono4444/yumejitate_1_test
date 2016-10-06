class RemoveImage4UpdatedAtFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image4_updated_at, :string
  end
end
