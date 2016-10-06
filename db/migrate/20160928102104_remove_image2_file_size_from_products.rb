class RemoveImage2FileSizeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image2_file_size, :string
  end
end
