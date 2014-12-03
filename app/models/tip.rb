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
#

class Tip < ActiveRecord::Base
  belongs_to :concept
  belongs_to :user
end
