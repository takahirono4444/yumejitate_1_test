class RenameColumnImageContentTypeToPictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :image_content_type, :photo_content_type
  end
end
