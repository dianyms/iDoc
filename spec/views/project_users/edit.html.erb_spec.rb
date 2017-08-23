require 'rails_helper'

RSpec.describe "project_users/edit", type: :view do
  before(:each) do
    @project_user = assign(:project_user, ProjectUser.create!(
      :user => nil,
      :project => nil
    ))
  end

  it "renders the edit project_user form" do
    render

    assert_select "form[action=?][method=?]", project_user_path(@project_user), "post" do

      assert_select "input#project_user_user_id[name=?]", "project_user[user_id]"

      assert_select "input#project_user_project_id[name=?]", "project_user[project_id]"
    end
  end
end
