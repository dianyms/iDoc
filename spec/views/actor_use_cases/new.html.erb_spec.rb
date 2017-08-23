require 'rails_helper'

RSpec.describe "actor_use_cases/new", type: :view do
  before(:each) do
    assign(:actor_use_case, ActorUseCase.new(
      :actor => nil,
      :use_case => nil
    ))
  end

  it "renders new actor_use_case form" do
    render

    assert_select "form[action=?][method=?]", actor_use_cases_path, "post" do

      assert_select "input#actor_use_case_actor_id[name=?]", "actor_use_case[actor_id]"

      assert_select "input#actor_use_case_use_case_id[name=?]", "actor_use_case[use_case_id]"
    end
  end
end
