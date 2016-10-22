class RemoveCustomerEvaluationFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :customer_evaluation, :string
  end
end
