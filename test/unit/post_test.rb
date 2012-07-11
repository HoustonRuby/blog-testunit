require 'test_helper'

class PostTest < ActiveSupport::TestCase

  test "requires title" do
    post = Post.new
    post.valid?
    assert post.errors[:title].any?, "Should have errored on blank title"
  end
  
  test "requires content" do
    post = Post.new
    post.valid?
    assert post.errors[:content].any?, "Should have errored on blank content"
  end
end
