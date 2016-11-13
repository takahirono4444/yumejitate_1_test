class AddBrowserToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :browser, :string, null: false, default: 0, after: :show_string_hp
  end
end
