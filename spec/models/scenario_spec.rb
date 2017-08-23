require 'rails_helper'

RSpec.describe Scenario, type: :model do
  it 'have many step_scenarios' do
    is_expected.to have_many(:step_scenarios)
  end
end
