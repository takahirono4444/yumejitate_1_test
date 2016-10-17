class ChangePrefecturesToProducts < ActiveRecord::Migration
  def up
    change_column :products, :prefectures, :string
  end

  #変更前の型
  def down
    change_column :products, :prefectures, :text
  end


end
