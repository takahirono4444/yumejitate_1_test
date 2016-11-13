class RemoveTerminalKindFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :terminal_kind, :string
  end
end
