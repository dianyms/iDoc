require 'rails_helper'

RSpec.describe "glossaries/index", type: :view do
  before(:each) do
    assign(:glossaries, [
      Glossary.create!(
        :term => "Term",
        :description => "MyText",
        :synonymous => "Synonymous",
        :project => nil
      ),
      Glossary.create!(
        :term => "Term",
        :description => "MyText",
        :synonymous => "Synonymous",
        :project => nil
      )
    ])
  end

  it "renders a list of glossaries" do
    render
    assert_select "tr>td", :text => "Term".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Synonymous".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
