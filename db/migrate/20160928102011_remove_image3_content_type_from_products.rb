class RemoveImage3ContentTypeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image3_content_type, :string
  end
end
