class RemoveFirstDayFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :first_day, :string
  end
end
