require 'rails_helper'

RSpec.describe "proyects/show", type: :view do
  before(:each) do
    @proyect = assign(:proyect, Proyect.create!(
      name: "Name",
      framework: nil,
      language: nil,
      skill: nil,
      other: "Other",
      imageurl: "Imageurl",
      live_url: "Live Url",
      source_url: "Source Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Other/)
    expect(rendered).to match(/Imageurl/)
    expect(rendered).to match(/Live Url/)
    expect(rendered).to match(/Source Url/)
  end
end
