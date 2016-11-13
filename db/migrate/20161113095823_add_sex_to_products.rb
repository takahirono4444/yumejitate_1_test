class AddSexToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sex, :string, null: false, default: 0, after: :customer_email
  end
end
