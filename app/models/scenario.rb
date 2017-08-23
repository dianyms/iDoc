class Scenario < ApplicationRecord
  belongs_to :use_case
  has_many :step_scenarios
end
