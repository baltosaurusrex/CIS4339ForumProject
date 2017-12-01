# == Schema Information
#
# Table name: channels
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ChannelTest < ActiveSupport::TestCase

  @name = name.new
  @description = description.new

  test "Channel name cannot be blank" do
    assert(@name.invalid, "Cahnnel Name should not be blank.")
  end

  test "Channel Description cannot be empty" do
    assert(@description.invalid, "Description should not be blank.")
  end
  # test "the truth" do
  #   assert true
  # end
end
