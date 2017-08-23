require 'rails_helper'

RSpec.describe "step_scenarios/show", type: :view do
  before(:each) do
    @step_scenario = assign(:step_scenario, StepScenario.create!(
      :sequence => "Sequence",
      :description => "MyText",
      :scenario => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Sequence/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
