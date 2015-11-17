class User < ActiveRecord::Base
	validates :username, presence: true,
	          uniquness: { case_sensitive: false },
	          length: { minimum 3, maximum 25 }
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 105 },
	           uniquness: { case_sensitive: false },
	           format: { with EMAIL_REGEX }
end