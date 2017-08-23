require 'rails_helper'

RSpec.describe Glossary, type: :model do
  before(:each) do
    @glossary = Glossary.new
  end

  it 'should be not created without term' do
     @glossary.term = nil
     expect(@glossary).to_not be_valid
  end

  it 'should be not created without description' do
     @glossary.description = nil
     expect(@glossary).to_not be_valid
  end

  it 'should be not created without project' do
     @glossary.project = nil
     expect(@glossary).to_not be_valid
  end

end
