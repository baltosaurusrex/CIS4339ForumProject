# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  BM                     :boolean
#  confirmation_token     :string(128)
#  remember_token         :string(128)
#  CM                     :boolean
#  user_role              :boolean
#

class User < ApplicationRecord

  require 'csv'


  def self.import(file)

    #params[:file].content_type == 'text/csv'

      CSV.foreach(file.path, headers: true) do |row|
        User.create! row.to_hash
    end
    end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  has_many :comments

end
