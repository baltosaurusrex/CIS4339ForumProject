class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, length: {minimum: 5}, uniqueness: { case_sensitve: false}
  validates :password, length: {minimum: 8}
  has_many :post
  has_many :comment
end
