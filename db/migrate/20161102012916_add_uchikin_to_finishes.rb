class AddUchikinToFinishes < ActiveRecord::Migration
  def change
    add_column :finishes, :uchikin, :integer, null: false, default: 0, after: :shitadori
  end
end
