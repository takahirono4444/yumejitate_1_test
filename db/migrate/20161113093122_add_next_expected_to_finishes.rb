class AddNextExpectedToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :next_expected, :string, null: false, after: :customer_appearance
  end
end
