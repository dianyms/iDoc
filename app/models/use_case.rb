class UseCase < ApplicationRecord
  belongs_to :project
  has_many :scenarios
end
