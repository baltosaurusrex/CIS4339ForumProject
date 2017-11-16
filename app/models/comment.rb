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
#

class Comment < ApplicationRecord
  #has_many :comments
  belongs_to :post
  belongs_to :user
end
