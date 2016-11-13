class AddSexToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :sex, :string, null: false, default: 0, after: :customer_email
  end
end
