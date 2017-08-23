require 'rails_helper'

RSpec.describe "actors/index", type: :view do
  before(:each) do
    assign(:actors, [
      Actor.create!(
        :name => "Name",
        :project => nil
      ),
      Actor.create!(
        :name => "Name",
        :project => nil
      )
    ])
  end

  it "renders a list of actors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
