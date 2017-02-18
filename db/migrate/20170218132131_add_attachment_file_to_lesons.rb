class AddAttachmentFileToLesons < ActiveRecord::Migration
  def self.up
    change_table :lesons do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :lesons, :file
  end
end
