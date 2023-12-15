require 'rails_helper'

describe 'the Markets Index page' do
  scenario 'find all markets', :vcr do
    visit ("http://localhost:5000/markets")

    expect(page).to have_content('Markets')
    expect(page).to have_content('Name')
    expect(page).to have_content('City')
    expect(page).to have_content('State')

    expect(page.status_code).to eq(200)
    expect(page).to have_link("14&U Farmers' Market")
    expect(page).to have_content('Washington')
    expect(page).to have_content('District of Columbia')
  end
end
