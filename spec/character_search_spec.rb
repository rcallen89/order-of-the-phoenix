require 'rails_helper'

RSpec.describe "Character Search API", type: :feature do
  it 'when a house is searched for it returns characters that were in the OotP' do
    visit root_path

    select "Gryffindor", from: "house"

    click_on("Search For Members")

    expect(current_path).to eq(search_path)

    expect(page).to have_content("There are 21 members from this house")
    expect(page).to have_content("House: Gryffindor", count: 21)
  end
end