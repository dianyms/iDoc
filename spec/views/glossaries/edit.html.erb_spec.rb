require 'rails_helper'

RSpec.describe "glossaries/edit", type: :view do
  before(:each) do
    @glossary = assign(:glossary, Glossary.create!(
      :term => "MyString",
      :description => "MyText",
      :synonymous => "MyString",
      :project => nil
    ))
  end

  it "renders the edit glossary form" do
    render

    assert_select "form[action=?][method=?]", glossary_path(@glossary), "post" do

      assert_select "input#glossary_term[name=?]", "glossary[term]"

      assert_select "textarea#glossary_description[name=?]", "glossary[description]"

      assert_select "input#glossary_synonymous[name=?]", "glossary[synonymous]"

      assert_select "input#glossary_project_id[name=?]", "glossary[project_id]"
    end
  end
end
