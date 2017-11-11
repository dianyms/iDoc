class Requirement < ApplicationRecord
  validates :name, :description, :requirement_type, :project, presence: true
  validates :name, uniqueness: true
  belongs_to :project, :class_name => "Project", :foreign_key => "project_id" 
  has_many :use_cases
   
end
