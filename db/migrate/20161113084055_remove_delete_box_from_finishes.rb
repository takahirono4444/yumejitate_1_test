class RemoveDeleteBoxFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :delete_box, :string
  end
end
