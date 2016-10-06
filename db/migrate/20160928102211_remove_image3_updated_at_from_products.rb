class RemoveImage3UpdatedAtFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image3_updated_at, :string
  end
end
