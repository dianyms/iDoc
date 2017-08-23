require 'rails_helper'

RSpec.describe "scenarios/index", type: :view do
  before(:each) do
    assign(:scenarios, [
      Scenario.create!(
        :name => "Name",
        :description => "MyText",
        :type => "Type",
        :use_case => nil
      ),
      Scenario.create!(
        :name => "Name",
        :description => "MyText",
        :type => "Type",
        :use_case => nil
      )
    ])
  end

  it "renders a list of scenarios" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
