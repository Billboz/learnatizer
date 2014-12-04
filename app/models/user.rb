# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password        :string(255)
#  role            :string(255)
#  email           :string(255)
#  blog            :string(255)
#  twitter         :string(255)
#  facebook        :string(255)
#  linkedin        :string(255)
#  points          :integer
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class User < ActiveRecord::Base

  has_many :tips
  has_many :votes

  has_secure_password

  validates :password, length: { minimum: 6}


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX},
            uniqueness:  { case_sensitive: false}

  validates :password, length: { minimum: 6 }
  def admin?
    self.role == 'staff'
  end


end
