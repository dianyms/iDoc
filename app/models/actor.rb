class Actor < ApplicationRecord
  belongs_to :use_case
  belongs_to :project

end
