class AddAttachmentImageToEatBlogs < ActiveRecord::Migration
  def self.up
    change_table :eat_blogs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :eat_blogs, :image
  end
end
