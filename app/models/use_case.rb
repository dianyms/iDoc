class UseCase < ApplicationRecord
  belongs_to :requirement, :class_name => "Requirement", :foreign_key => "requirement_id" 
  belongs_to :project, :class_name => "Requirement", :foreign_key => "requirement_id" 

  has_many :scenarios
  has_many :actors
end
