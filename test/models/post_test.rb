# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  channel_id :integer
#  user_id    :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase

  @title = title.new
  @content = content.new

  test "Title cannot be blank" do
    assert(@title.invalid, "Title should not be blank.")
  end

  test "Content cannot be empty" do
    assert(@content.invalid, "Content should not be blank.")
  end

  # test "the truth" do
  #   assert true
  # end
end
