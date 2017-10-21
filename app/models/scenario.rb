class Scenario < ApplicationRecord
  validates :name, :description, :scenario_type, :use_case, presence: true
  validates :name, uniqueness: true
  belongs_to :use_case
  belongs_to :project
  has_many :step_scenarios
end