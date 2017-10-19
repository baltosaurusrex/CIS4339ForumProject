class Channel < ApplicationRecord
  has_many :post
  belongs_to :homepage
end
