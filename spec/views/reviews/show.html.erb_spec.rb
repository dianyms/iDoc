require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :version => "Version",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Version/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
