class RemovePublishTrueFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :publish_true, :string
  end
end
