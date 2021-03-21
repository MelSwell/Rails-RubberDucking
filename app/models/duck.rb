class Duck < ApplicationRecord
  belongs_to :student, optional: true
  validates :name, presence: true
  validates :description, presence: true

  def self.studentless_ducks
    Duck.where(student_id: nil)
  end
end
