class Discussion < ApplicationRecord
  belongs_to :question
  belongs_to :user
  belongs_to :answer
end
