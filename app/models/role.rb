class Role < ApplicationRecord
  has_many :project_roles
  has_many :projects, through: :project_roles
  validates :name, presence: true, uniqueness: true
end
