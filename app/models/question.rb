class Question < ApplicationRecord
  validates :title, presence: true, length: { minimum: 10 }
  validates :description, presence: true, length: { minimum: 15 }

  has_many :answers
end
