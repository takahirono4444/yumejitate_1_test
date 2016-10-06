class AddPictureIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :picture_id, :string
  end
end
