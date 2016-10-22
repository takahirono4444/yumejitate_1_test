class RemoveCustomerEvaluationFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :customer_evaluation, :string
  end
end
