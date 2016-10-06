class RemoveImage2FileNameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image2_file_name, :string
  end
end
