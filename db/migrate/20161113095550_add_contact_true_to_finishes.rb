class AddContactTrueToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :contact_true, :string, null: false, default: 0, after: :publish_true
  end
end
