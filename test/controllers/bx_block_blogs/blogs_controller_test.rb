require "test_helper"

class BxBlockBlogs::BlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bx_block_blogs_blog = bx_block_blogs_blogs(:one)
  end

  test "should get index" do
    get bx_block_blogs_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_bx_block_blogs_blog_url
    assert_response :success
  end

  test "should create bx_block_blogs_blog" do
    assert_difference("BxBlockBlogs::Blog.count") do
      post bx_block_blogs_blogs_url, params: { bx_block_blogs_blog: { content: @bx_block_blogs_blog.content, name: @bx_block_blogs_blog.name, title: @bx_block_blogs_blog.title } }
    end

    assert_redirected_to bx_block_blogs_blog_url(BxBlockBlogs::Blog.last)
  end

  test "should show bx_block_blogs_blog" do
    get bx_block_blogs_blog_url(@bx_block_blogs_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_bx_block_blogs_blog_url(@bx_block_blogs_blog)
    assert_response :success
  end

  test "should update bx_block_blogs_blog" do
    patch bx_block_blogs_blog_url(@bx_block_blogs_blog), params: { bx_block_blogs_blog: { content: @bx_block_blogs_blog.content, name: @bx_block_blogs_blog.name, title: @bx_block_blogs_blog.title } }
    assert_redirected_to bx_block_blogs_blog_url(@bx_block_blogs_blog)
  end

  test "should destroy bx_block_blogs_blog" do
    assert_difference("BxBlockBlogs::Blog.count", -1) do
      delete bx_block_blogs_blog_url(@bx_block_blogs_blog)
    end

    assert_redirected_to bx_block_blogs_blogs_url
  end
end
