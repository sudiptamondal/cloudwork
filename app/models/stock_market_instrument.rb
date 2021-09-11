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
class StockMarketInstrument < ApplicationRecord
	#permit_params :instrument_token, :exchange_token, :tradingsymbol, :name, :last_price, :expiry, :strike, :tick_size, :lot_size, :instrument_type, :segment, :exchange
	def pullAllStockMarketInstrument

		url = URI.parse(Property.get("KITE_GET_ALL_INSTRUMENTS"))
		puts url
		response = HTTParty.get(url)
		puts response.class

	end	
end
	