require 'rails_helper'

RSpec.describe "requirements/show", type: :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :name => "Name",
      :description => "MyText",
      :type => "Type",
      :project => nil
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
