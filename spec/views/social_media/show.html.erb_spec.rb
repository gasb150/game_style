require 'rails_helper'

RSpec.describe "social_media/show", type: :view do
  before(:each) do
    @social_medium = assign(:social_medium, SocialMedium.create!(
      name: "Name",
      url: "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
  end
end
