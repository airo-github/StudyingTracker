class StudyTime < ApplicationRecord
  belongs_to :user, class_name: 'User'

  validates :user_id, presence: true
  validate :validate_unique_status_zero

  private

  def validate_unique_status_zero
    if self.status == 0 && StudyTime.exists?(user_id: self.user_id, status: 0)
      errors.add(:status, "already exists with status 0")
    end
  end
end
