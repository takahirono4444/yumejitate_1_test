class RemoveImage5UpdatedAtFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image5_updated_at, :string
  end
end
