class AddSampleDesignToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :sample_design, :string, null: false, default: 0, after: :sample_price
  end
end
