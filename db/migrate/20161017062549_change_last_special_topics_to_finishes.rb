class ChangeLastSpecialTopicsToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :last_special_topics, :string
  end

  #変更前の型
  def down
    change_column :finishes, :last_special_topics, :text
  end
end
