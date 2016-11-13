class RemoveBrowserFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :Browser, :string
  end
end
