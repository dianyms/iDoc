class Glossary < ApplicationRecord
  belongs_to :project
  validates :term, :description, :synonymous, presence: true
  validates :term, uniqueness: true
end
