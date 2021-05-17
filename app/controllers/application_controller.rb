class ApplicationController < ActionController::Base
    @api = StockQuote::Stock.new(api_key: "pk_0ad01f64792b4f469d89b4bb6b8d1ca4")
end
