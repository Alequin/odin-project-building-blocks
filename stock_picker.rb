def stock_picker(prices)

  best_buy_day = 0
  best_sell_day = 0
  best_profit = 0

  for buy_day in 0..prices.length-1
    for sell_day in buy_day..prices.length-1
      test_profit = prices[sell_day] - prices[buy_day]
      if( test_profit > best_profit)
        best_buy_day = buy_day
        best_sell_day = sell_day
        best_profit = test_profit
      end
    end
  end

  return [best_buy_day, best_sell_day]

end

puts stock_picker([17,3,6,9,15,8,6,1,10])
