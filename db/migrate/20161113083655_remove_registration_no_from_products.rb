class RemoveRegistrationNoFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :registration_no, :string
  end
end
