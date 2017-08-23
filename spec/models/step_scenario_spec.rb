require 'rails_helper'

RSpec.describe StepScenario, type: :model do
  before(:each) do
    @step_scenario = StepScenario.new
  end

  it 'should be not created without sequence' do
     @step_scenario.sequence = nil
     expect(@step_scenario).to_not be_valid
  end

  it 'should be not created without description' do
     @step_scenario.description = nil
     expect(@step_scenario).to_not be_valid
  end

  it 'should be not created without scenario' do
     @step_scenario.scenario = nil
     expect(@step_scenario).to_not be_valid
  end
end
