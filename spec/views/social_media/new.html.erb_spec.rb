require 'rails_helper'

RSpec.describe "social_media/new", type: :view do
  before(:each) do
    assign(:social_medium, SocialMedium.new(
      name: "MyString",
      url: "MyString"
    ))
  end

  it "renders new social_medium form" do
    render

    assert_select "form[action=?][method=?]", social_media_path, "post" do

      assert_select "input[name=?]", "social_medium[name]"

      assert_select "input[name=?]", "social_medium[url]"
    end
  end
end
