class RemoveCreatedAtFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :created_at, :string
  end
end
