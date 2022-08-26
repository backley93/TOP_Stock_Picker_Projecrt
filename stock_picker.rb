
stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(array)

  prev_price = nil
  buy_price = nil
  sell_price = nil
  curr_diff = nil
  prev_diff = nil
  buy_sell = []

  array.each do |price|

    if prev_price == nil
      prev_price = price
    elsif price < prev_price
      prev_price = price
    end

    curr_diff = price - prev_price

    if prev_diff == nil
      prev_diff = curr_diff
    elsif prev_diff < curr_diff
      prev_diff = curr_diff
      buy_price = prev_price
      sell_price = price
    end

  end

  buy_sell.unshift(buy_price)
  buy_sell.push(sell_price)

  p buy_sell
  p "The price to buy is $#{buy_price}, the price to sell is $#{sell_price} and 
    the profit is $#{prev_diff} per share."

end