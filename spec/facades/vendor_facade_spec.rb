require 'rails_helper'

describe VendorFacade do
  describe 'class methods' do

    feature '#vendor_details' do
      scenario 'shows vendor details', :vcr do
        expect(VendorFacade.vendor_details(55823)).to be_a(Vendor)
        expect(VendorFacade.vendor_details(55823).id).to eq("55823")
        expect(VendorFacade.vendor_details(55823)).to respond_to(:contact_name)
        expect(VendorFacade.vendor_details(55823)).to respond_to(:name)
        expect(VendorFacade.vendor_details(55823)).to respond_to(:contact_phone)
        expect(VendorFacade.vendor_details(55823)).to respond_to(:credit_accepted)
        expect(VendorFacade.vendor_details(55823)).to respond_to(:description)
      end
    end
  end
end
