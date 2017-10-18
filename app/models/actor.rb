class Actor < ApplicationRecord
  validates_presence_of :name 
  validates_presence_of :use_case 
  validates_presence_of :project 
  belongs_to :use_case
  belongs_to :project
end
