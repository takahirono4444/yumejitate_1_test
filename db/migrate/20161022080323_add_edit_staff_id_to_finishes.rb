class AddEditStaffIdToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :edit_staff_id, :string
  end
end
