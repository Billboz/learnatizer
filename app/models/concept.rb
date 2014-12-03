# == Schema Information
#
# Table name: concepts
#
#  id         :integer          not null, primary key
#  concept    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Concept < ActiveRecord::Base
  has_many :tips

end
