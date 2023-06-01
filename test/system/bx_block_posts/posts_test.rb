require "application_system_test_case"

class BxBlockPosts::PostsTest < ApplicationSystemTestCase
  setup do
    @bx_block_posts_post = bx_block_posts_posts(:one)
  end

  test "visiting the index" do
    visit bx_block_posts_posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit bx_block_posts_posts_url
    click_on "New post"

    fill_in "Content", with: @bx_block_posts_post.content
    fill_in "Name", with: @bx_block_posts_post.name
    fill_in "Title", with: @bx_block_posts_post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit bx_block_posts_post_url(@bx_block_posts_post)
    click_on "Edit this post", match: :first

    fill_in "Content", with: @bx_block_posts_post.content
    fill_in "Name", with: @bx_block_posts_post.name
    fill_in "Title", with: @bx_block_posts_post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit bx_block_posts_post_url(@bx_block_posts_post)
    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end
