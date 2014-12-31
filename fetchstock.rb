require 'stock_quote'
active = true


while active == true do
puts "What is the stock you need to look up?"
	stock = gets.strip
	quote = StockQuote::Stock.quote(stock)

	puts "
	Bid price #{quote.bid}
	Ask price #{quote.ask}
	Open price #{quote.open}
	Change price #{quote.change}"
	puts "Do you want to look up another? (Y/N)"
	active = gets.chomp
	if active.downcase == "y"
		active = true
		else active = false
	end
end
