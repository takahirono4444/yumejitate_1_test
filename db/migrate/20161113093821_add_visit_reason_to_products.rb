class AddVisitReasonToProducts < ActiveRecord::Migration
  def change
    add_column :products, :visit_reason, :string, null: false, default: 0, after: :next_expected
  end
end
