class RenameHpInpressionColumnToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :hp_inpression, :hp_impression
  end
end
