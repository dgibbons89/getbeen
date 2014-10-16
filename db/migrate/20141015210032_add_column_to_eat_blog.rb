class AddColumnToEatBlog < ActiveRecord::Migration
  def change
    add_column :eat_blogs, :attachment, :string
  end
end
