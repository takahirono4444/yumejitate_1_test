class RemoveImage1ContentTypeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image1_content_type, :string
  end
end
