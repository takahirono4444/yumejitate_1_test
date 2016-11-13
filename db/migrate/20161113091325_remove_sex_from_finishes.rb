class RemoveSexFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :sex, :string
  end
end
