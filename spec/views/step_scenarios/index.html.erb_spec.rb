require 'rails_helper'

RSpec.describe "step_scenarios/index", type: :view do
  before(:each) do
    assign(:step_scenarios, [
      StepScenario.create!(
        :sequence => "Sequence",
        :description => "MyText",
        :scenario => nil
      ),
      StepScenario.create!(
        :sequence => "Sequence",
        :description => "MyText",
        :scenario => nil
      )
    ])
  end

  it "renders a list of step_scenarios" do
    render
    assert_select "tr>td", :text => "Sequence".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
