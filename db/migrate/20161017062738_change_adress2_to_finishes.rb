class ChangeAdress2ToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :adress2, :string
  end

  #変更前の型
  def down
    change_column :finishes, :adress2, :text
  end
end
