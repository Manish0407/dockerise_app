require "test_helper"

class BxBlockPosts::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bx_block_posts_post = bx_block_posts_posts(:one)
  end

  test "should get index" do
    get bx_block_posts_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_bx_block_posts_post_url
    assert_response :success
  end

  test "should create bx_block_posts_post" do
    assert_difference("BxBlockPosts::Post.count") do
      post bx_block_posts_posts_url, params: { bx_block_posts_post: { content: @bx_block_posts_post.content, name: @bx_block_posts_post.name, title: @bx_block_posts_post.title } }
    end

    assert_redirected_to bx_block_posts_post_url(BxBlockPosts::Post.last)
  end

  test "should show bx_block_posts_post" do
    get bx_block_posts_post_url(@bx_block_posts_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_bx_block_posts_post_url(@bx_block_posts_post)
    assert_response :success
  end

  test "should update bx_block_posts_post" do
    patch bx_block_posts_post_url(@bx_block_posts_post), params: { bx_block_posts_post: { content: @bx_block_posts_post.content, name: @bx_block_posts_post.name, title: @bx_block_posts_post.title } }
    assert_redirected_to bx_block_posts_post_url(@bx_block_posts_post)
  end

  test "should destroy bx_block_posts_post" do
    assert_difference("BxBlockPosts::Post.count", -1) do
      delete bx_block_posts_post_url(@bx_block_posts_post)
    end

    assert_redirected_to bx_block_posts_posts_url
  end
end
