require 'test_helper'

class ShowCommentsOnPostTest < ActionDispatch::IntegrationTest
  
  fixtures :all
  
  test "shows the comment" do
    get post_path posts(:content_post_one)
    assert_select ".comments", /#{comments(:comment_the_first).text}/
    assert_include response.body, comments(:comment_the_first).text
    
    comments = css_select ".comments"
    assert_include comments.join(""), "JWO RULES"
  end
end
