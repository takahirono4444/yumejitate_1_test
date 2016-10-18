class ChangeLastSpecialTopicsToProducts < ActiveRecord::Migration
def up
    change_column :products, :last_special_topics, :string
  end

  #変更前の型
  def down
    change_column :products, :last_special_topics, :text
  end
end
