# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  password   :string(255)
#  role       :string(255)
#  email      :string(255)
#  blog       :string(255)
#  twitter    :string(255)
#  facebook   :string(255)
#  linkedin   :string(255)
#  points     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
