class RemoveHistoryNumberFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :history_number, :string
  end
end
