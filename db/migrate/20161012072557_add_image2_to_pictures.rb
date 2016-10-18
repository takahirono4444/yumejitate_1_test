class AddImage2ToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :image2, :string
  end
end
