class AddEditStaffIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :edit_staff_id, :string
  end
end
