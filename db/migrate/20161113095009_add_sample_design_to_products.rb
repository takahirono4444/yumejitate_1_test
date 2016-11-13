class AddSampleDesignToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sample_design, :string, null: false, default: 0, after: :sample_price
  end
end
