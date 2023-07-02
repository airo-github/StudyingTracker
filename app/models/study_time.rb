class StudyTime < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates :user_id, presence: true
  validates :status, uniqueness: { scope: :user_id}, if: -> { status == 0 }
end
