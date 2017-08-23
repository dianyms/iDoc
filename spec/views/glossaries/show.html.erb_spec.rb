require 'rails_helper'

RSpec.describe "glossaries/show", type: :view do
  before(:each) do
    @glossary = assign(:glossary, Glossary.create!(
      :term => "Term",
      :description => "MyText",
      :synonymous => "Synonymous",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Term/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Synonymous/)
    expect(rendered).to match(//)
  end
end
