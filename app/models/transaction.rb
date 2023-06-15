class Transaction < ApplicationRecord
  belongs_to :course
  belongs_to :student, class_name: 'User', foreign_key: 'student_id'
  belongs_to :tutor, class_name: 'User', foreign_key: 'tutor_id'

  validates :course_id, presence: true
  validates :student_id, presence: true
  validates :tutor_id, presence: true
  # validates :status, presence: true
end
