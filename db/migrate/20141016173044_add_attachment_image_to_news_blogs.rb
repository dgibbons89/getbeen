class AddAttachmentImageToNewsBlogs < ActiveRecord::Migration
  def self.up
    change_table :news_blogs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :news_blogs, :image
  end
end
