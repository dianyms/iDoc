require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :version => "MyString",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_version[name=?]", "review[version]"

      assert_select "textarea#review_description[name=?]", "review[description]"

      assert_select "input#review_project_id[name=?]", "review[project_id]"
    end
  end
end
