class RemoveRegistrationNoFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :registration_no, :string
  end
end
