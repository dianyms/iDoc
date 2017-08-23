require 'rails_helper'

RSpec.describe User, type: :model do

    before(:each) do
      @user = User.new(:name => 'User Test', :email => 'test@test.com', :password => 'senha123')
    end

    it 'should be not created without name' do
       @user.name = nil
       expect(@user).to_not be_valid
    end

    it 'should be not created without email' do
       @user.email = nil
       expect(@user).to_not be_valid
    end

    it 'should be not created without password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it 'should be created with all requirements' do
      expect(@user).to be_valid
    end

    it "invalid if exists email equal" do
      user = User.create( name: 'Steve',
       password: 'Harris', email: 'contato@ironmaiden.com' )
      user = User.new( name: 'Bruce',
       password: 'Dickinson', email: 'contato@ironmaiden.com' )
      expect(user).to_not be_valid
    end

end
