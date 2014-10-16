class AddAttachmentImageToDrinkBlogs < ActiveRecord::Migration
  def self.up
    change_table :drink_blogs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :drink_blogs, :image
  end
end
