require 'rails_helper'

RSpec.describe Scenario, type: :model do
  before(:each) do
    @scenario = Scenario.new(:name => 'Name', :description => 'Example text', :scenario_type => 'Principal',
      :use_case => @use_case, :project => @project)
  end
  
  it 'have many step_scenarios' do
    is_expected.to have_many(:step_scenarios)
  end
  
  it 'should be not created without name' do
     @scenario.name = nil
     expect(@scenario).to_not be_valid
  end

  it 'should be not created without description' do
     @scenario.description = nil
     expect(@scenario).to_not be_valid
  end

  it 'should be not created without type' do
    @scenario.scenario_type = nil
    expect(@scenario).to_not be_valid
  end

  it 'should be not created without use case' do
    @scenario.use_case = nil
    expect(@scenario).to_not be_valid
  end
  
  it 'should be not created without project' do
    @scenario.project = nil
    expect(@scenario).to_not be_valid
  end
end
