class StocksController < ApplicationController
  def index
    unless params[:low] && params[:high]
      @stocks = Stock.all
    else
      @stocks = Stock.filter(params[:low], params[:high])
    end
    
    @price_range = Stock.high_low_prices
    
    respond_to do |format|
      format.html
      format.js do
        render :update do |page|
          page.replace_html 'x_stock_list', :partial => 'stocks/stock_list', :locals => { :stocks => @stocks }
        end
      end
    end
  end
end
