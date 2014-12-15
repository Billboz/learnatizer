# == Schema Information
#
# Table name: votes
#
#  id         :integer          not null, primary key
#  score      :integer
#  created_at :datetime
#  updated_at :datetime
#  tip_id     :string(255)
#  user_id    :string(255)
#

class Vote < ActiveRecord::Base
  belongs_to :tip
  belongs_to :user

end
