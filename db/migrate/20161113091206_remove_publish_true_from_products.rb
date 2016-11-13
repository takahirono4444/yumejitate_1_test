class RemovePublishTrueFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :publish_true, :string
  end
end
