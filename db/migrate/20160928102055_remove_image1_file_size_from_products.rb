class RemoveImage1FileSizeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image1_file_size, :string
  end
end
