class AddColumnToDrinkBlog < ActiveRecord::Migration
  def change
    add_column :drink_blogs, :attachment, :string
  end
end
