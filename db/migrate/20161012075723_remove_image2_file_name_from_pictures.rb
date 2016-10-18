class RemoveImage2FileNameFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :image2_file_name, :string
  end
end
