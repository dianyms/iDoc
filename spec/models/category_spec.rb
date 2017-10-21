require 'rails_helper'

RSpec.describe Category, type: :model do
    
  before(:each) do
    @category = Category.new(:name => 'Name', :user => @user)
  end
  
   it 'should be not created without name' do
     @category.name = nil
     expect(@category).to_not be_valid
  end
  
   it 'should be not created without user' do
     @category.user = nil
     expect(@category).to_not be_valid
  end
  
  it 'have many projects' do
    is_expected.to have_many(:projects)
  end
  
    it 'invalid if exists name equal' do
        category = Category.create( name: 'Test', user: @user)
        category = Category.new( name: 'Test', user: @user)
        expect(category).to_not be_valid
    end
end


