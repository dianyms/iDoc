require 'rails_helper'

RSpec.describe "scenarios/new", type: :view do
  before(:each) do
    assign(:scenario, Scenario.new(
      :name => "MyString",
      :description => "MyText",
      :type => "",
      :use_case => nil
    ))
  end

  it "renders new scenario form" do
    render

    assert_select "form[action=?][method=?]", scenarios_path, "post" do

      assert_select "input#scenario_name[name=?]", "scenario[name]"

      assert_select "textarea#scenario_description[name=?]", "scenario[description]"

      assert_select "input#scenario_type[name=?]", "scenario[type]"

      assert_select "input#scenario_use_case_id[name=?]", "scenario[use_case_id]"
    end
  end
end
