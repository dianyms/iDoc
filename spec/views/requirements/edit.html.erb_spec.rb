require 'rails_helper'

RSpec.describe "requirements/edit", type: :view do
  before(:each) do
    @requirement = assign(:requirement, Requirement.create!(
      :name => "MyString",
      :description => "MyText",
      :type => "",
      :project => nil
    ))
  end

  it "renders the edit requirement form" do
    render

    assert_select "form[action=?][method=?]", requirement_path(@requirement), "post" do

      assert_select "input#requirement_name[name=?]", "requirement[name]"

      assert_select "textarea#requirement_description[name=?]", "requirement[description]"

      assert_select "input#requirement_type[name=?]", "requirement[type]"

      assert_select "input#requirement_project_id[name=?]", "requirement[project_id]"
    end
  end
end
