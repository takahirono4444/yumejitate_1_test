class ChangeSearchKeywordsToProducts < ActiveRecord::Migration
def up
    change_column :products, :search_keywords, :string
  end

  #変更前の型
  def down
    change_column :products, :search_keywords, :text
  end
end
