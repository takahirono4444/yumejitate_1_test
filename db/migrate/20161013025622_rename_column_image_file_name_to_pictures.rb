class RenameColumnImageFileNameToPictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :image_file_name, :photo_file_name
  end
end
