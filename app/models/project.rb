class Project < ApplicationRecord
  has_many :project_roles
  has_many :roles, through: :project_roles

  validates :name, presence: true
end
