require 'rails_helper'

describe 'the Markets Show page' do
  scenario 'market show page', :vcr do
    visit "http://localhost:5000/markets/322458"

    expect(page).to have_content("14&U Farmers' Market")
    expect(page).to have_content('1400 U Street NW Washington, District of Columbia')
    expect(page).to have_content('Vendors at our market:')
    expect(page).to have_link('The Charcuterie Corner')
    expect(page.status_code).to eq(200)
  end
end