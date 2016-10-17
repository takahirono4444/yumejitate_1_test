class ChangePrefecturesToFinishes < ActiveRecord::Migration
def up
    change_column :finishes, :prefectures, :string
  end

  #変更前の型
  def down
    change_column :finishes, :prefectures, :text
  end
end
