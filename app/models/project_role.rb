class ProjectRole < ApplicationRecord
  belongs_to :project
  belongs_to :role
  has_many :assignments
  has_many :users, through: :assignments

  validates :experience_required, inclusion: { in: ["junior", "mid-level", "senior"] }
end
