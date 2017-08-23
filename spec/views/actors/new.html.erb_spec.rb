require 'rails_helper'

RSpec.describe "actors/new", type: :view do
  before(:each) do
    assign(:actor, Actor.new(
      :name => "MyString",
      :project => nil
    ))
  end

  it "renders new actor form" do
    render

    assert_select "form[action=?][method=?]", actors_path, "post" do

      assert_select "input#actor_name[name=?]", "actor[name]"

      assert_select "input#actor_project_id[name=?]", "actor[project_id]"
    end
  end
end
