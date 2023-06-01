class CreateBxBlockBlogsBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :bx_block_blogs_blogs do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
