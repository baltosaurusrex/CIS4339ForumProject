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

class Post < ApplicationRecord
  has_many :comment, :dependent => :destroy
  belongs_to :channel
  belongs_to :user
  validates_presence_of :title,:content
  validates :title, presence: true, length: {minimum: 1}
end
