class ChangeSpecialTopicsToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :special_topics, :string
  end

  #変更前の型
  def down
    change_column :finishes, :special_topics, :text
  end
end
