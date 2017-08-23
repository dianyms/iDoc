require 'rails_helper'

RSpec.describe "step_scenarios/new", type: :view do
  before(:each) do
    assign(:step_scenario, StepScenario.new(
      :sequence => "MyString",
      :description => "MyText",
      :scenario => nil
    ))
  end

  it "renders new step_scenario form" do
    render

    assert_select "form[action=?][method=?]", step_scenarios_path, "post" do

      assert_select "input#step_scenario_sequence[name=?]", "step_scenario[sequence]"

      assert_select "textarea#step_scenario_description[name=?]", "step_scenario[description]"

      assert_select "input#step_scenario_scenario_id[name=?]", "step_scenario[scenario_id]"
    end
  end
end
