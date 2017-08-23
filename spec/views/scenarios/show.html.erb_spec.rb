require 'rails_helper'

RSpec.describe "scenarios/show", type: :view do
  before(:each) do
    @scenario = assign(:scenario, Scenario.create!(
      :name => "Name",
      :description => "MyText",
      :type => "Type",
      :use_case => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(//)
  end
end
