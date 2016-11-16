class User < ActiveRecord::Base
	has_secure_password

	has_many :albums

	validates :first_name, :last_name, presence: true
	validates :username, :email, presence: true, uniqueness: true

end 