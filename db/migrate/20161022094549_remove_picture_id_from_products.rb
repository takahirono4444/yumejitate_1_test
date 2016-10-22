class RemovePictureIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :picture_id, :string
  end
end
