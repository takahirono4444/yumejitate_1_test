class RemoveLastResponseStringFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :last_response_string, :string
  end
end
