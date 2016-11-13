class RemoveRegistrationStringFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :registration_string, :string
  end
end
