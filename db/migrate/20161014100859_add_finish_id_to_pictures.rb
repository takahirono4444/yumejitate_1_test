class AddFinishIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :finish_id, :string
  end
end
