class MarketFacade
  def self.all_markets
    json_response = MarketService.all_markets
    json_response[:data].map do |market|
      x = Market.new(market)
    end
  end

  def self.one_market(market)
    json_response = MarketService.one_market
    require 'pry'; binding.pry
  end
end
