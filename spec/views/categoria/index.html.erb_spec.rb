require 'rails_helper'

RSpec.describe "categoria/index", type: :view do
  before(:each) do
    assign(:categoria, [
      Categorium.create!(
        :name => "Name"
      ),
      Categorium.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of categoria" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
