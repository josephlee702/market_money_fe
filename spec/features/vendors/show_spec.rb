require 'rails_helper'

describe 'the Vendors Show page' do
  scenario 'gets all vendors of a market', :vcr do
    visit "http://localhost:5000/vendors/55823"

    expect(page).to have_content('Name: The Charcuterie Corner')
    expect(page).to have_content('Vendor Contact: Claudie Langworth III')
    expect(page).to have_content('Vendor Contact Phone: 1-147-179-9747')
    expect(page).to have_content('Credit Accepted?: No')
    expect(page).to have_content('Description: Vendor selling a variety of artisanal cured meats and sausages.')
    expect(page.status_code).to eq(200)
  end
end