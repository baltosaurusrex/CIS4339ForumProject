# == Schema Information
#
# Table name: channels
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Channel < ApplicationRecord
  has_many :posts, :dependent => :destroy

end
