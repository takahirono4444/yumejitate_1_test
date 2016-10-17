class ChangeSpecialTopicsToProducts < ActiveRecord::Migration
def up
    change_column :products, :special_topics, :string
  end

  #変更前の型
  def down
    change_column :products, :special_topics, :text
  end
end
