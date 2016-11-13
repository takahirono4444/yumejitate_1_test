class RemoveDmTrueFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :DM_true, :string
  end
end
