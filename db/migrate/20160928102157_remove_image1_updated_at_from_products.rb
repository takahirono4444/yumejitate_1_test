class RemoveImage1UpdatedAtFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image1_updated_at, :string
  end
end
