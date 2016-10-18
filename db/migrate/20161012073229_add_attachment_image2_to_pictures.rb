class AddAttachmentImage2ToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :image2
    end
  end

  def self.down
    remove_attachment :pictures, :image2
  end
end
