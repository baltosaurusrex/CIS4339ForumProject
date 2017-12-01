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

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :user, presence: true, length: {minimum: 1}
end
