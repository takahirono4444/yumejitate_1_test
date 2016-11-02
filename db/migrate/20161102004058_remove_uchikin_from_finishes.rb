class RemoveUchikinFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :uchikin, :integer
  end
end
