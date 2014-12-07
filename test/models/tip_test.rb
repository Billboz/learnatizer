# == Schema Information
#
# Table name: tips
#
#  id         :integer          not null, primary key
#  problem    :string(255)
#  error      :string(255)
#  solution   :string(255)
#  created_at :datetime
#  updated_at :datetime
#  concept_id :integer
#  user_id    :integer
#

require 'test_helper'

class TipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
