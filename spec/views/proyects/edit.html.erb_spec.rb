require 'rails_helper'

RSpec.describe "proyects/edit", type: :view do
  before(:each) do
    @proyect = assign(:proyect, Proyect.create!(
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

  it "renders the edit proyect form" do
    render

    assert_select "form[action=?][method=?]", proyect_path(@proyect), "post" do

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
