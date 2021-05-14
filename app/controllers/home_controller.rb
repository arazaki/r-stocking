class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: "pk_0ad01f64792b4f469d89b4bb6b8d1ca4")
    if params[:ticker] == ""
      @nothing = "Hey! You forgot to Enter a Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      
    end
  end

  def about
  end
end
