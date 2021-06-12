require 'rails_helper'

RSpec.describe "proyects/new", type: :view do
  before(:each) do
    assign(:proyect, Proyect.new(
      name: "MyString",
      framework: nil,
      language: nil,
      skill: nil,
      other: "MyString",
      imageurl: "MyString",
      live_url: "MyString",
      source_url: "MyString"
    ))
  end

  it "renders new proyect form" do
    render

    assert_select "form[action=?][method=?]", proyects_path, "post" do

      assert_select "input[name=?]", "proyect[name]"

      assert_select "input[name=?]", "proyect[framework_id]"

      assert_select "input[name=?]", "proyect[language_id]"

      assert_select "input[name=?]", "proyect[skill_id]"

      assert_select "input[name=?]", "proyect[other]"

      assert_select "input[name=?]", "proyect[imageurl]"

      assert_select "input[name=?]", "proyect[live_url]"

      assert_select "input[name=?]", "proyect[source_url]"
    end
  end
end
