class ChangeSearchKeywordsToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :search_keywords, :string
  end

  #変更前の型
  def down
    change_column :finishes, :search_keywords, :text
  end
end
