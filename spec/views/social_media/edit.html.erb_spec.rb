require 'rails_helper'

RSpec.describe "social_media/edit", type: :view do
  before(:each) do
    @social_medium = assign(:social_medium, SocialMedium.create!(
      name: "MyString",
      url: "MyString"
    ))
  end

  it "renders the edit social_medium form" do
    render

    assert_select "form[action=?][method=?]", social_medium_path(@social_medium), "post" do

      assert_select "input[name=?]", "social_medium[name]"

      assert_select "input[name=?]", "social_medium[url]"
    end
  end
end
