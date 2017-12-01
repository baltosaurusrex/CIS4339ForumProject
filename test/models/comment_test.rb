# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user       :string
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer
#  user_id    :integer
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase

  @content = content.new

  test "Content cannot be empty" do
    assert(@content.invalid, "Content should not be blank.")
  end

  # test "the truth" do
  #   assert true
  # end
end
