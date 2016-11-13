class RemoveVisitReasonFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :visit_reason, :string
  end
end
