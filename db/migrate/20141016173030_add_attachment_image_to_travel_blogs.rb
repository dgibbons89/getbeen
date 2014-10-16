class AddAttachmentImageToTravelBlogs < ActiveRecord::Migration
  def self.up
    change_table :travel_blogs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :travel_blogs, :image
  end
end
