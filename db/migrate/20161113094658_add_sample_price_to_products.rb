class AddSamplePriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sample_price, :string, null: false, default: 0, after: :hp_impression
  end
end
