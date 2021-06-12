require 'rails_helper'

RSpec.describe "proyects/index", type: :view do
  before(:each) do
    assign(:proyects, [
      Proyect.create!(
        name: "Name",
        framework: nil,
        language: nil,
        skill: nil,
        other: "Other",
        imageurl: "Imageurl",
        live_url: "Live Url",
        source_url: "Source Url"
      ),
      Proyect.create!(
        name: "Name",
        framework: nil,
        language: nil,
        skill: nil,
        other: "Other",
        imageurl: "Imageurl",
        live_url: "Live Url",
        source_url: "Source Url"
      )
    ])
  end

  it "renders a list of proyects" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Other".to_s, count: 2
    assert_select "tr>td", text: "Imageurl".to_s, count: 2
    assert_select "tr>td", text: "Live Url".to_s, count: 2
    assert_select "tr>td", text: "Source Url".to_s, count: 2
  end
end
