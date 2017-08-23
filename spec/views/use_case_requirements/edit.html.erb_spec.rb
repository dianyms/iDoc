require 'rails_helper'

RSpec.describe "use_case_requirements/edit", type: :view do
  before(:each) do
    @use_case_requirement = assign(:use_case_requirement, UseCaseRequirement.create!(
      :use_case => nil,
      :requirement => nil
    ))
  end

  it "renders the edit use_case_requirement form" do
    render

    assert_select "form[action=?][method=?]", use_case_requirement_path(@use_case_requirement), "post" do

      assert_select "input#use_case_requirement_use_case_id[name=?]", "use_case_requirement[use_case_id]"

      assert_select "input#use_case_requirement_requirement_id[name=?]", "use_case_requirement[requirement_id]"
    end
  end
end
