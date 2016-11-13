class RemoveUpstringStringFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :upstring_string, :string
  end
end
