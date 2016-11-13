class RemoveTerminalKindFromFinishes < ActiveRecord::Migration
  def change
    remove_column :finishes, :terminal_kind, :string
  end
end
