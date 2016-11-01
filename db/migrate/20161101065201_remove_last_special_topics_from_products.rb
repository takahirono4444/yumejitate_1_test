class RemoveLastSpecialTopicsFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :last_special_topics, :string
  end
end
