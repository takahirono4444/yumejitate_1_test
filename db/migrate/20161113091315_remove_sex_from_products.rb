class RemoveSexFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :sex, :string
  end
end
