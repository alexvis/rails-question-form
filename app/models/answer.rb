class Answer < ApplicationRecord
  validates :answer, presence: true, length: { minimum: 10 }

  belongs_to :question
end
