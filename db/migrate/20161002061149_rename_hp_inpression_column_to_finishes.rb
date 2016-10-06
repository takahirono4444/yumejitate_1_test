class RenameHpInpressionColumnToFinishes < ActiveRecord::Migration
  def change
    rename_column :finishes, :hp_inpression, :hp_impression
  end
end
