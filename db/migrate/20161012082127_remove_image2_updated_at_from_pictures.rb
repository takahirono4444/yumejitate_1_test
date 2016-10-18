class RemoveImage2UpdatedAtFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :image2_updated_at, :string
  end
end
