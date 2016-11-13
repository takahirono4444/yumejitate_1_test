class AddTerminalKindToProducts < ActiveRecord::Migration
  def change
    add_column :products, :terminal_kind, :string, null: false, default: 0, after: :browser
  end
end
