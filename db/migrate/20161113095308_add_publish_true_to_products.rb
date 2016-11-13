class AddPublishTrueToProducts < ActiveRecord::Migration
  def change
    add_column :products, :publish_true, :string, null: false, default: 0, after: :want_jewelry
  end
end
