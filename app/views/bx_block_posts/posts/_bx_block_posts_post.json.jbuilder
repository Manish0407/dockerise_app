json.extract! bx_block_posts_post, :id, :name, :title, :content, :created_at, :updated_at
json.url bx_block_posts_post_url(bx_block_posts_post, format: :json)
