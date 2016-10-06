class RemoveImage5FileNameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image5_file_name, :string
  end
end
