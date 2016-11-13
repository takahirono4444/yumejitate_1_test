class RemoveContactTrueFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :contact_true, :string
  end
end
