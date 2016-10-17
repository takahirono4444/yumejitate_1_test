class ChangeFreeSpace1ToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :free_space1, :string
  end

  #変更前の型
  def down
    change_column :finishes, :free_space1, :text
  end
end
