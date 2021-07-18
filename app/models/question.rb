class Question < ApplicationRecord
	has_many :answers
	has_many :users, through: :discussions





	
end
