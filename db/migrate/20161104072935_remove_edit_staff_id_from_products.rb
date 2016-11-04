class RemoveEditStaffIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :edit_staff_id, :string
  end
end
