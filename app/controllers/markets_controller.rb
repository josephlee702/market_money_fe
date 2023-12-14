class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.all_markets
  end

  def show
    @market = MarketFacade.market_details(params[:id])
    @vendors = MarketFacade.get_vendors(@market.id)
  end
end
