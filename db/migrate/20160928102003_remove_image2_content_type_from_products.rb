class RemoveImage2ContentTypeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image2_content_type, :string
  end
end
