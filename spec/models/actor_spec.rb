require 'rails_helper'

RSpec.describe Actor, type: :model do
  before(:each) do
    @actor = Actor.new
  end

  it 'should be not created without name' do
     @actor.name = nil
     expect(@actor).to_not be_valid
  end

  it 'should be not created without project' do
     @actor.project = nil
     expect(@actor).to_not be_valid
  end
end
