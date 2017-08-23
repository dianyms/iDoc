require 'rails_helper'

RSpec.describe "use_cases/new", type: :view do
  before(:each) do
    assign(:use_case, UseCase.new(
      :name => "MyString",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders new use_case form" do
    render

    assert_select "form[action=?][method=?]", use_cases_path, "post" do

      assert_select "input#use_case_name[name=?]", "use_case[name]"

      assert_select "textarea#use_case_description[name=?]", "use_case[description]"

      assert_select "input#use_case_project_id[name=?]", "use_case[project_id]"
    end
  end
end
