class RemoveImage4FileSizeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image4_file_size, :string
  end
end
