require 'rails_helper'

RSpec.describe "use_case_requirements/index", type: :view do
  before(:each) do
    assign(:use_case_requirements, [
      UseCaseRequirement.create!(
        :use_case => nil,
        :requirement => nil
      ),
      UseCaseRequirement.create!(
        :use_case => nil,
        :requirement => nil
      )
    ])
  end

  it "renders a list of use_case_requirements" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
