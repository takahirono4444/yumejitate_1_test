class AddTerminalKindToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :terminal_kind, :string, null: false, default: 0, after: :browser
  end
end
