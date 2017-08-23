require 'rails_helper'

RSpec.describe "glossaries/new", type: :view do
  before(:each) do
    assign(:glossary, Glossary.new(
      :term => "MyString",
      :description => "MyText",
      :synonymous => "MyString",
      :project => nil
    ))
  end

  it "renders new glossary form" do
    render

    assert_select "form[action=?][method=?]", glossaries_path, "post" do

      assert_select "input#glossary_term[name=?]", "glossary[term]"

      assert_select "textarea#glossary_description[name=?]", "glossary[description]"

      assert_select "input#glossary_synonymous[name=?]", "glossary[synonymous]"

      assert_select "input#glossary_project_id[name=?]", "glossary[project_id]"
    end
  end
end
