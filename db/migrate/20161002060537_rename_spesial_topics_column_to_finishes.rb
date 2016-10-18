class RenameSpesialTopicsColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :spesial_topics, :special_topics
  end
end
