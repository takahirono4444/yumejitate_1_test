class RemoveContactTrueFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :contact_true, :string
  end
end
