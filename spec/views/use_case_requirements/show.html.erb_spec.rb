require 'rails_helper'

RSpec.describe "use_case_requirements/show", type: :view do
  before(:each) do
    @use_case_requirement = assign(:use_case_requirement, UseCaseRequirement.create!(
      :use_case => nil,
      :requirement => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
