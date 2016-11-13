class RemoveNextExpectedFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :next_expected, :string
  end
end
