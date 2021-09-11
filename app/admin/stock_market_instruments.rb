ActiveAdmin.register StockMarketInstrument do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :instrument_token, :exchange_token, :tradingsymbol, :name, :last_price, :expiry, :strike, :tick_size, :lot_size, :instrument_type, :segment, :exchange
  #
  # or
  #
  # permit_params do
  #   permitted = [:instrument_token, :exchange_token, :tradingsymbol, :name, :last_price, :expiry, :strike, :tick_size, :lot_size, :instrument_type, :segment, :exchange]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  
  
end
