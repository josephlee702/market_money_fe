class MarketFacade
  def self.all_markets
    json_response = MarketService.all_markets
    json_response[:data].map do |market|
      Market.new(market)
    end
  end

  def self.market_details(market_id)
    json_response = MarketService.market_details(market_id)
    Market.new(json_response[:data])
  end

  def self.get_vendors(market_id)
    MarketService.get_vendors(market_id)[:data].each do |vendor_data|
      Vendor.new(vendor_data)
    end
  end
end
