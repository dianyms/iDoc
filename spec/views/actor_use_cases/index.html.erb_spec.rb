require 'rails_helper'

RSpec.describe "actor_use_cases/index", type: :view do
  before(:each) do
    assign(:actor_use_cases, [
      ActorUseCase.create!(
        :actor => nil,
        :use_case => nil
      ),
      ActorUseCase.create!(
        :actor => nil,
        :use_case => nil
      )
    ])
  end

  it "renders a list of actor_use_cases" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
