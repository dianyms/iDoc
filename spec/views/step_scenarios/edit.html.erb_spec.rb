require 'rails_helper'

RSpec.describe "step_scenarios/edit", type: :view do
  before(:each) do
    @step_scenario = assign(:step_scenario, StepScenario.create!(
      :sequence => "MyString",
      :description => "MyText",
      :scenario => nil
    ))
  end

  it "renders the edit step_scenario form" do
    render

    assert_select "form[action=?][method=?]", step_scenario_path(@step_scenario), "post" do

      assert_select "input#step_scenario_sequence[name=?]", "step_scenario[sequence]"

      assert_select "textarea#step_scenario_description[name=?]", "step_scenario[description]"

      assert_select "input#step_scenario_scenario_id[name=?]", "step_scenario[scenario_id]"
    end
  end
end
