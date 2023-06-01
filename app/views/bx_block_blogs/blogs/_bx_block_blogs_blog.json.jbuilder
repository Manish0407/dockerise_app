json.extract! bx_block_blogs_blog, :id, :name, :title, :content, :created_at, :updated_at
json.url bx_block_blogs_blog_url(bx_block_blogs_blog, format: :json)
