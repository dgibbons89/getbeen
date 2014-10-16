class AddColumnToTravelBlog < ActiveRecord::Migration
  def change
    add_column :travel_blogs, :attachment, :string
  end
end
