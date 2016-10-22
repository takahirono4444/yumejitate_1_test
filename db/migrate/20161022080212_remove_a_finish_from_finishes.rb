class RemoveAFinishFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :a_finish, :string
  end
end
