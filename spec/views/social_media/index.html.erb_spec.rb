require 'rails_helper'

RSpec.describe "social_media/index", type: :view do
  before(:each) do
    assign(:social_media, [
      SocialMedium.create!(
        name: "Name",
        url: "Url"
      ),
      SocialMedium.create!(
        name: "Name",
        url: "Url"
      )
    ])
  end

  it "renders a list of social_media" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Url".to_s, count: 2
  end
end
