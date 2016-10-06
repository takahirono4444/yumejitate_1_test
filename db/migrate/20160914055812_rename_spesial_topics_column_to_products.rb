class RenameSpesialTopicsColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :spesial_topics, :special_topics
  end
end
