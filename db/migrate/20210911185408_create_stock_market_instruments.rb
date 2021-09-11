class CreateStockMarketInstruments < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_market_instruments do |t|
      t.string :instrument_token
      t.string :exchange_token
      t.string :tradingsymbol
      t.string :name
      t.string :last_price
      t.string :expiry
      t.string :strike
      t.string :tick_size
      t.string :lot_size
      t.string :instrument_type
      t.string :segment
      t.string :exchange

      t.timestamps
    end
  end
end
