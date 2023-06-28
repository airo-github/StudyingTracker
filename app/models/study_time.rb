class StudyTime < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates :user_id, presence: true
end
