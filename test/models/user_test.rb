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

require 'test_helper'



class UserTest < ActiveSupport::TestCase

  setup do
    @encrypted_password = encrypted_password.new
  end

  test "password cannot contain more than 32 characters" do
    assert(@encrypted_password.invalid?,"Password must contain no more than 32 characters.")
  end

  test "password cannot be blank" do
    assert(@encrypted_password.invalid?,"Password cannot be blank.")
  end

  test "requires CSV" do
    require 'csv'
  end

  # test "the truth" do
  #   assert true
  # end
end
