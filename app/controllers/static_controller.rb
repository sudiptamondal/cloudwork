class StaticController < ApplicationController
  def test
  end
  def check
    s = StockMarketInstrument.new
    s.pullAllStockMarketInstrument
    "true"
  end
end
