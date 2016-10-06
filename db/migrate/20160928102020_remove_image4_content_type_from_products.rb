class RemoveImage4ContentTypeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image4_content_type, :string
  end
end
