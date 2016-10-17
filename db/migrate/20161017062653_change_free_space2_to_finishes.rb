class ChangeFreeSpace2ToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :free_space2, :string
  end

  #変更前の型
  def down
    change_column :finishes, :free_space2, :text
  end
end
