class Stock < ActiveRecord::Base
  named_scope :filter, lambda { |low, high| { :conditions => { :price => low..high } } }
  
  def self.high_low_prices
    [Stock.minimum(:price), Stock.maximum(:price)]
  end  
end
