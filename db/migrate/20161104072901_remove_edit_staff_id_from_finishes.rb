class RemoveEditStaffIdFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :edit_staff_id, :string
  end
end
