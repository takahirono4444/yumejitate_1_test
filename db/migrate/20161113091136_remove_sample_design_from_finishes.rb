class RemoveSampleDesignFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :sample_design, :string
  end
end
