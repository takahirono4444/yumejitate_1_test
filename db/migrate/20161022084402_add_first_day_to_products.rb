class AddFirstDayToProducts < ActiveRecord::Migration
  def change
    add_column :products, :first_day, :string, after: :syohin_id
  end
end
