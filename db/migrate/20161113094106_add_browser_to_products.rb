class AddBrowserToProducts < ActiveRecord::Migration
  def change
    add_column :products, :browser, :string, null: false, default: 0, after: :show_string_hp
  end
end
