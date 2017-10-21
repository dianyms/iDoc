require 'rails_helper'

RSpec.describe UseCase, type: :model do
  
  before(:each) do
    @use_case = UseCase.new(:name => 'Name', :description => 'Example text', :requirement => @requirement)
  end
  
  it 'should be not created without name' do
    @use_case.name = nil
    expect(@use_case).to_not be_valid
  end
  
   it 'should be not created without description' do
    @use_case.description = nil
    expect(@use_case).to_not be_valid
  end
  
   it 'should be not created without requirement' do
    @use_case.requirement = nil
    expect(@use_case).to_not be_valid
  end
  
  
  it 'have many scenarios' do
    is_expected.to have_many(:scenarios)
  end
  
  it 'have many actors' do
    is_expected.to have_many(:actors)
  end
end
