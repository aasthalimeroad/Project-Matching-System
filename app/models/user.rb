class User < ApplicationRecord
  has_secure_password
  has_many :assignments
  has_many :project_roles, through: :assignments
  has_many :projects, -> { distinct }, through: :project_roles

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :position, inclusion: { in: ["manager", "employee"] }
  validates :experience_level, inclusion: { in: ["junior", "mid-level", "senior"] }

  def is_manager?
    position == "manager"
  end
end
