class Post < ApplicationRecord
  has_many :comment
  belongs_to :channel
  belongs_to :user

end
