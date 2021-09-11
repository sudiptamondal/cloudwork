# == Schema Information
#
# Table name: stock_market_instruments
#
#  id               :integer          not null, primary key
#  instrument_token :string
#  exchange_token   :string
#  tradingsymbol    :string
#  name             :string
#  last_price       :string
#  expiry           :string
#  strike           :string
#  tick_size        :string
#  lot_size         :string
#  instrument_type  :string
#  segment          :string
#  exchange         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class StockMarketInstrumentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
