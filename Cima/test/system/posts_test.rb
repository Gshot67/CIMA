require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "should create post" do
    visit posts_url
    click_on "New post"

    fill_in "Content", with: @post.content
    fill_in "Editoriale", with: @post.editoriale
    fill_in "Fonte esterna", with: @post.fonte_esterna
    fill_in "Lingua", with: @post.lingua
    fill_in "Tag", with: @post.tag
    fill_in "Titolo", with: @post.titolo
    fill_in "Topic", with: @post.topic
    fill_in "User", with: @post.user_id
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "should update Post" do
    visit post_url(@post)
    click_on "Edit this post", match: :first

    fill_in "Content", with: @post.content
    fill_in "Editoriale", with: @post.editoriale
    fill_in "Fonte esterna", with: @post.fonte_esterna
    fill_in "Lingua", with: @post.lingua
    fill_in "Tag", with: @post.tag
    fill_in "Titolo", with: @post.titolo
    fill_in "Topic", with: @post.topic
    fill_in "User", with: @post.user_id
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "should destroy Post" do
    visit post_url(@post)
    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end
