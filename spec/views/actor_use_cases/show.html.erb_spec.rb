require 'rails_helper'

RSpec.describe "actor_use_cases/show", type: :view do
  before(:each) do
    @actor_use_case = assign(:actor_use_case, ActorUseCase.create!(
      :actor => nil,
      :use_case => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
