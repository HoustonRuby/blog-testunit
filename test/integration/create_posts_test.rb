require 'test_helper'

class CreatePostsTest < ActionDispatch::IntegrationTest

  test "create post" do
    get new_post_path
    assert_response :success
    assert_select "form input", 4
      
    post_via_redirect posts_path, {post: {title: "Super Test",content: "The Content is Here"}}
    assert_equal post_path, path
    assert_select "body", /The Content is Here/
  end
end
