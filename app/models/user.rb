class User < ApplicationRecord
	has_secure_password

	has_many :quotes
	has_many :carts
	has_many :items, through: :carts


	belongs_to :department

	has_many :questions, through: :discussions
	has_many :answers, through: :discussions
end
