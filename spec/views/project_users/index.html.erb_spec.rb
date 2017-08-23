require 'rails_helper'

RSpec.describe "project_users/index", type: :view do
  before(:each) do
    assign(:project_users, [
      ProjectUser.create!(
        :user => nil,
        :project => nil
      ),
      ProjectUser.create!(
        :user => nil,
        :project => nil
      )
    ])
  end

  it "renders a list of project_users" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
