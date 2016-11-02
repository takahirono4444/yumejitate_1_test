class RemoveShitadoriFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :shitadori, :integer
  end
end
