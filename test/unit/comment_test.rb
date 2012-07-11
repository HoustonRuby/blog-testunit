require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  test "validates post exists" do
    comment = Comment.new
    comment.valid?
    assert comment.errors[:post].any?, "Require post ya'll"
  end
end
