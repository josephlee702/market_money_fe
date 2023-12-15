require 'rails_helper'

describe MarketFacade do
  describe 'class methods' do

    feature '#all_markets' do
      scenario 'find all markets', :vcr do
        expect(MarketFacade.all_markets.count).to eq(846)
        expect(MarketFacade.all_markets.first).to be_a(Market)
      end
    end

    feature '#market_details' do
      scenario 'market show page', :vcr do
        expect(MarketFacade.market_details(322458)).to be_a(Market)
        expect(MarketFacade.market_details(322458).city).to eq("Washington")
        expect(MarketFacade.market_details(322458).id).to eq("322458")
      end
    end

    feature '#get_vendors' do
      scenario 'gets all vendors of a market', :vcr do
        expect(MarketFacade.get_vendors(322458)).to be_an(Array)
        expect(MarketFacade.get_vendors(322458).count).to eq(1)
        expect(MarketFacade.get_vendors(322458).first[:type]).to eq("vendor")
      end
    end
  end
end
