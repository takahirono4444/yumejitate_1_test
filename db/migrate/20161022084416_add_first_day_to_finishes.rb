class AddFirstDayToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :first_day, :string, after: :syohin_id
  end
end
