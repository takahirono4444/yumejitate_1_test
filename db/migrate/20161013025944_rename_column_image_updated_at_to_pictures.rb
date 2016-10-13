class RenameColumnImageUpdatedAtToPictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :image_updated_at, :photo_updated_at
  end
end
