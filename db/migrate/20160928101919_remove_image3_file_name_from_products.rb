class RemoveImage3FileNameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image3_file_name, :string
  end
end
