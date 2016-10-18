class RenameColumnImageFileSizeToPictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :image_file_size, :photo_file_size
  end
end
