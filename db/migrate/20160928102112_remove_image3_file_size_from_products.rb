class RemoveImage3FileSizeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image3_file_size, :string
  end
end
