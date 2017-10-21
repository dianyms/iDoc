class StepScenario < ApplicationRecord
  validates :sequence, :description, :scenario, presence: true
  belongs_to :scenario
end
