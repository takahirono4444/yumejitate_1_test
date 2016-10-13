class RemoveImage2FileSizeFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :image2_file_size, :string
  end
end
