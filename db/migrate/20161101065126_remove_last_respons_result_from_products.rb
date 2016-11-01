class RemoveLastResponsResultFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :last_respons_result, :string
  end
end
