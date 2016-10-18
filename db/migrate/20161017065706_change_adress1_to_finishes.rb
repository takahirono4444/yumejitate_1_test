class ChangeAdress1ToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :adress1, :string
  end

  #変更前の型
  def down
    change_column :finishes, :adress1, :text
  end
end
