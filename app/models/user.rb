class User < ActiveRecord::Base
  validates :username, presence: true, length: { maximum: 28 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }, 
                    format: { with: VALID_EMAIL_REGEX }

  validates :password, presence: true, length: { minimum: 6 }
end
