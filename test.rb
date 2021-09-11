require 'uri'
require 'app/models/property.rb'
		url = URI.parse(Property.get("KITE_GET_ALL_INSTRUMENTS"))
		puts url
		response = HTTParty.get(url)
		puts response.class
