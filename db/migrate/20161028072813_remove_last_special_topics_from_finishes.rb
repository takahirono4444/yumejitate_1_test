class RemoveLastSpecialTopicsFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :last_special_topics, :string
  end
end
