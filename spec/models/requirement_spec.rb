require 'rails_helper'

RSpec.describe Requirement, type: :model do
  before(:each) do
    @requirement = Requirement.new(:name => 'Name', :description => 'Example text', :project => @project)
  end

  it 'should be not created without name' do
     @requirement.name = nil
     expect(@requirement).to_not be_valid
  end

  it 'should be not created without description' do
     @requirement.description = nil
     expect(@requirement).to_not be_valid
  end

  it 'should be not created without type' do
    @requirement.type = nil
    expect(@requirement).to_not be_valid
  end

  it 'should be not created without project' do
    @requirement.project = nil
    expect(@requirement).to_not be_valid
  end

end
