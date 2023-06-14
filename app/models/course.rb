class Course < ApplicationRecord
  belongs_to :user
  has_many :transactions, through: :user, foreign_key: :id

  validates :title, presence: true
end
