class RemoveLastResponseStringFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :last_response_string, :string
  end
end
