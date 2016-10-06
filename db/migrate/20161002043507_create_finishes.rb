class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|

      t.timestamps null: false
    end
  end
end
