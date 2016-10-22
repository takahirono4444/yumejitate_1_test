class RemoveFirstDayFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :first_day, :string
  end
end
