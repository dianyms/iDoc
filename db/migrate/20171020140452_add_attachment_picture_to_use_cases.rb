class AddAttachmentPictureToUseCases < ActiveRecord::Migration
  def self.up
    change_table :use_cases do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :use_cases, :picture
  end
end
