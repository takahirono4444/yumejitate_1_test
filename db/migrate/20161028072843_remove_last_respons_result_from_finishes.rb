class RemoveLastResponsResultFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :last_respons_result, :string
  end
end
