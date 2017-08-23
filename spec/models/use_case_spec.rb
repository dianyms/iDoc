require 'rails_helper'

RSpec.describe UseCase, type: :model do
  it 'have many scenarios' do
    is_expected.to have_many(:scenarios)
  end
end
