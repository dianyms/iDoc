class Project < ApplicationRecord
  validates :title, :text, :delivery_date, :creation_date, :category, presence: true
  validates :title, uniqueness: true
  belongs_to :category
  has_many :requirements, :foreign_key => "project_id"
  has_many :use_cases, :foreign_key => "project_id"
  has_many :actors, :foreign_key => "project_id"
  has_one :glossary, :foreign_key => "project_id"
end
