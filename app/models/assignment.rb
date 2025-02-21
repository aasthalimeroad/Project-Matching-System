class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :project_role
end
