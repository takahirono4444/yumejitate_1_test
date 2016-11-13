class RemoveRegistrationStringFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :registration_string, :string
  end
end
