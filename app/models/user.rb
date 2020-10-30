class User < ApplicationRecord

	has_secure_password

	validates :user_name, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true

	validates :email, 
	    presence: true, 
	    uniqueness: true,
	    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
	validates :age, presence: true
	validates :password, presence: true, length: { minimum: 6 }

end
