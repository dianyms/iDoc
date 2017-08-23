require 'rails_helper'

RSpec.describe "actor_use_cases/edit", type: :view do
  before(:each) do
    @actor_use_case = assign(:actor_use_case, ActorUseCase.create!(
      :actor => nil,
      :use_case => nil
    ))
  end

  it "renders the edit actor_use_case form" do
    render

    assert_select "form[action=?][method=?]", actor_use_case_path(@actor_use_case), "post" do

      assert_select "input#actor_use_case_actor_id[name=?]", "actor_use_case[actor_id]"

      assert_select "input#actor_use_case_use_case_id[name=?]", "actor_use_case[use_case_id]"
    end
  end
end
