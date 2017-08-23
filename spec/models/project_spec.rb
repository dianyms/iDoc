require 'rails_helper'

RSpec.describe Project, type: :model do
  before(:each) do
    @project = Project.new(:title => 'Title', :text => 'Example text', :delivery_date => '25/05/2017',
      :creation_date => Date.current, :category => 'comercial')
  end

  it 'should be not created without title' do
     @project.title = nil
     expect(@project).to_not be_valid
  end

  it 'should be not created without text' do
     @project.text = nil
     expect(@project).to_not be_valid
  end

  it 'should be not created without delivery date' do
    @project.delivery_date = nil
    expect(@project).to_not be_valid
  end

  it 'should be not created without creation date' do
    @project.creation_date = nil
    expect(@project).to_not be_valid
  end

  it 'should be not created without category' do
    @project.category = nil
    expect(@project).to_not be_valid
  end

  it 'invalid if exists title equal' do
    project = Project.create( title: 'Test', text: 'text example', delivery_date: '',
     creation_date: Date.current, category: 'comercial')
    project = Project.new( title: 'Test', text: 'text example2', delivery_date: '',
     creation_date: Date.current, category: 'comercial')
    expect(project).to_not be_valid
  end

  it 'have many requirements' do
    is_expected.to have_many(:requirements)
  end

  it 'have many use_cases' do
    is_expected.to have_many(:use_cases)
  end

  it 'have many actors' do
    is_expected.to have_many(:actors)
  end

  it 'have one glossary' do
    is_expected.to have_one(:glossary)
  end


end
