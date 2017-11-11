class UseCase < ApplicationRecord
  validates :name, :description, presence: true
  belongs_to :project, :class_name => "Project", :foreign_key => "project_id"
  belongs_to :requirement, :class_name => "Requirement", :foreign_key => "requirement_id" 
  has_many :scenarios
  has_many :actors
  
  #paperclip
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
