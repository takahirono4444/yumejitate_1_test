class RemoveSampleDesignFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :sample_design, :string
  end
end
