class CreateEatBlogs < ActiveRecord::Migration
  def change
    create_table :eat_blogs do |t|
      t.string :title
      t.text :paragraph1
      t.text :paragraph2
      t.text :paragraph3
      t.text :paragraph4

      t.timestamps
    end
  end
end
