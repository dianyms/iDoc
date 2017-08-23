require 'rails_helper'

RSpec.describe "scenarios/edit", type: :view do
  before(:each) do
    @scenario = assign(:scenario, Scenario.create!(
      :name => "MyString",
      :description => "MyText",
      :type => "",
      :use_case => nil
    ))
  end

  it "renders the edit scenario form" do
    render

    assert_select "form[action=?][method=?]", scenario_path(@scenario), "post" do

      assert_select "input#scenario_name[name=?]", "scenario[name]"

      assert_select "textarea#scenario_description[name=?]", "scenario[description]"

      assert_select "input#scenario_type[name=?]", "scenario[type]"

      assert_select "input#scenario_use_case_id[name=?]", "scenario[use_case_id]"
    end
  end
end
