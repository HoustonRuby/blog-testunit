require 'test_helper'

class HomePagePostsTest < ActionDispatch::IntegrationTest
  fixtures :posts
  
  test "It displays my posts" do
    get root_path
    assert_select ".post", 2
  end
end
