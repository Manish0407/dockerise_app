class CreateBxBlockPostsPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :bx_block_posts_posts do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
