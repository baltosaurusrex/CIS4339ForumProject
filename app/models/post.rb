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
#  user_id    :integer
#

class Post < ApplicationRecord
  has_many :comment, :dependent => :destroy
  belongs_to :channel
  belongs_to :user

end
