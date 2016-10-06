class RemoveImage2UpdatedAtFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image2_updated_at, :string
  end
end
