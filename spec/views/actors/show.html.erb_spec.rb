require 'rails_helper'

RSpec.describe "actors/show", type: :view do
  before(:each) do
    @actor = assign(:actor, Actor.create!(
      :name => "Name",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
