class Requirement < ApplicationRecord
  belongs_to :project, :class_name => "Project", :foreign_key => "project_id" 
  has_many :use_cases
end
