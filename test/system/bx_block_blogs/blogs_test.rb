require "application_system_test_case"

class BxBlockBlogs::BlogsTest < ApplicationSystemTestCase
  setup do
    @bx_block_blogs_blog = bx_block_blogs_blogs(:one)
  end

  test "visiting the index" do
    visit bx_block_blogs_blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "should create blog" do
    visit bx_block_blogs_blogs_url
    click_on "New blog"

    fill_in "Content", with: @bx_block_blogs_blog.content
    fill_in "Name", with: @bx_block_blogs_blog.name
    fill_in "Title", with: @bx_block_blogs_blog.title
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "should update Blog" do
    visit bx_block_blogs_blog_url(@bx_block_blogs_blog)
    click_on "Edit this blog", match: :first

    fill_in "Content", with: @bx_block_blogs_blog.content
    fill_in "Name", with: @bx_block_blogs_blog.name
    fill_in "Title", with: @bx_block_blogs_blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog" do
    visit bx_block_blogs_blog_url(@bx_block_blogs_blog)
    click_on "Destroy this blog", match: :first

    assert_text "Blog was successfully destroyed"
  end
end
