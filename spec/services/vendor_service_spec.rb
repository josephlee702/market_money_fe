require 'rails_helper'

RSpec.describe MarketService do
  describe 'class methods' do
    context '#conn' do
      it 'returns a Faraday connection' do
        conn = MarketService.conn

        expect(conn).to be_a(Faraday::Connection)
      end
    end

    context '#get_url' do
      it 'returns a parsed response' do
        VCR.use_cassette('market_show_page') do
          response = MarketService.get_url('/api/v0/markets')

          expect(response).to be_a(Hash)
          expect(response).to have_key(:data)
        end
      end
    end

    context '#all_markets' do
      it 'returns all market' do
        VCR.use_cassette('find_all_markets') do
          markets = MarketService.all_markets[:data]

          expect(markets).to be_an(Array)
          expect(markets.first).to be_a(Hash)
          expect(markets.first).to have_key(:id)
          expect(markets.first).to have_key(:attributes)
          expect(markets.first[:attributes]).to have_key(:street)
        end
      end
    end

    context 'market_details' do
      it 'returns market details' do
        VCR.use_cassette('markets_show_page') do
          market = MarketService.market_details(322458)[:data]

          expect(market).to be_an(Hash)
          expect(market).to have_key(:id)
          expect(market).to have_key(:type)
          expect(market.first).to be_an(Array)
        end
      end
    end

    context 'get_vendors' do
      it 'gets the vendors of a market' do
        VCR.use_cassette('market_vendor_details') do
          market = MarketService.get_vendors(322458)[:data]

          expect(market).to be_an(Array)
          expect(market.first).to be_a(Hash)

          expect(market.first).to have_key(:attributes)
          expect(market.first[:attributes]).to have_key(:contact_name)
        end
      end
    end
  end
end
