class RemoveImage2ContentTypeFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :image2_content_type, :string
  end
end
