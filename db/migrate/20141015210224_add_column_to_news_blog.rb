class AddColumnToNewsBlog < ActiveRecord::Migration
  def change
    add_column :news_blogs, :attachment, :string
  end
end
