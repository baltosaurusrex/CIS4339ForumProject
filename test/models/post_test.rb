# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  name       :string
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  channel_id :integer
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
