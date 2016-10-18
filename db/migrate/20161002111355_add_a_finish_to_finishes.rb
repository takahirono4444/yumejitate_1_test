class AddAFinishToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :a_finish, :string
  end
end
