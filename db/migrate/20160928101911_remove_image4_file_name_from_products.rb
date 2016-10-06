class RemoveImage4FileNameFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image4_file_name, :string
  end
end
