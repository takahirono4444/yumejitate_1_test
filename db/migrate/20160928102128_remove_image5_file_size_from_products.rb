class RemoveImage5FileSizeFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image5_file_size, :string
  end
end
