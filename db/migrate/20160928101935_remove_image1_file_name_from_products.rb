class RemoveImage1FileNameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image1_file_name, :string
  end
end
