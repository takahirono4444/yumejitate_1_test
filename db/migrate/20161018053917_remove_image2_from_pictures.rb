class RemoveImage2FromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :image2, :string
  end
end
