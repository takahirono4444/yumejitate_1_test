class RemoveImage5ContentTypeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image5_content_type, :string
  end
end
