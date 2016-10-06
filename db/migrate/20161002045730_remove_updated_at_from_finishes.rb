class RemoveUpdatedAtFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :Updated_at, :string
  end
end
