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
#  title      :string(255)
#

class Tip < ActiveRecord::Base
  belongs_to :concept
  belongs_to :user
  has_many :votes

  def total_score
    votes.sum(:score)
  end


end
