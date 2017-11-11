require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :version => "MyString",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_version[name=?]", "review[version]"

      assert_select "textarea#review_description[name=?]", "review[description]"

      assert_select "input#review_project_id[name=?]", "review[project_id]"
    end
  end
end
