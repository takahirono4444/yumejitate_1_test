class RemoveHistoryNumberFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :history_number, :string
  end
end
