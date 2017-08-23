require 'rails_helper'

RSpec.describe "requirements/new", type: :view do
  before(:each) do
    assign(:requirement, Requirement.new(
      :name => "MyString",
      :description => "MyText",
      :type => "",
      :project => nil
    ))
  end

  it "renders new requirement form" do
    render

    assert_select "form[action=?][method=?]", requirements_path, "post" do

      assert_select "input#requirement_name[name=?]", "requirement[name]"

      assert_select "textarea#requirement_description[name=?]", "requirement[description]"

      assert_select "input#requirement_type[name=?]", "requirement[type]"

      assert_select "input#requirement_project_id[name=?]", "requirement[project_id]"
    end
  end
end
