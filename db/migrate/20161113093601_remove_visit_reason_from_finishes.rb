class RemoveVisitReasonFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :visit_reason, :string
  end
end
