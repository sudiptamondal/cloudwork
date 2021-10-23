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
		Log.new.info "pullAllStockMarketInstrument Started" 
		# Rails.logger.info response.body
		response.body.split("\n").each do |line|
			StockMarketInstrument.create_or_update line.split(",") if line.split(",")[9] == "EQ"
		end
		Log.new.info "pullAllStockMarketInstrument Completed" 
	end	
	def self.create_or_update arr
		check = StockMarketInstrument.where(tradingsymbol: arr[3])
		if check.blank?
			StockMarketInstrument.create!(
				instrument_token: arr[0],
				exchange_token: arr[1],
				tradingsymbol: arr[3],
				name: arr[3],
				last_price: arr[4],
				expiry: arr[5],
				strike: arr[6],
				tick_size: arr[7],
				lot_size: arr[8],
				instrument_type: arr[9],
				segment: arr[10],
				exchange: arr[11]
			)
		else
			check[0].instrument_token = arr[0],
			check[0].exchange_token =  arr[1],
			check[0].tradingsymbol =  arr[3],
			check[0].name =  arr[3],
			check[0].last_price =  arr[4],
			check[0].expiry =  arr[5],
			check[0].strike =  arr[6],
			check[0].tick_size =  arr[7],
			check[0].lot_size =  arr[8],
			check[0].instrument_type =  arr[9],
			check[0].segment =  arr[10],
			check[0].exchange =  arr[11]
			check[0].save!
		end
	end
end

