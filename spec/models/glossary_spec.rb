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
  
   it 'should be not created without synonymous' do
     @glossary.synonymous = nil
     expect(@glossary).to_not be_valid
  end

  it 'should be not created without project' do
     @glossary.project = nil
     expect(@glossary).to_not be_valid
  end
  
  it 'invalid if exists term equal' do
    glossary = Glossary.create(term: 'Test', description: 'text example', synonymous: 'Tests')
    glossary = Glossary.new(term: 'Test', description: 'text example2', synonymous: 'Tests2')
    expect(glossary).to_not be_valid
  end

end
