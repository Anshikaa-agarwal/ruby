# forzen_string_literal: true
class Vehicle
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    print "Vehicle name: #{name}\n"
    print "Vehicle price: #{price}\n"
  end

end

class Bike < Vehicle
  attr_reader :dealer, :percent_price_increase
  def initialize(name, price, dealer, percent_price_increase)
    super(name, price)
    @dealer = dealer
    @percent_price_increase = percent_price_increase.to_f
  end

  def increase_price
    @price = @price * (1 + @percent_price_increase/100)
  end

  def display 
    print "Bike Name: #{@name}\n"
    print "Bike Price: #{@price}\n"
    print "Bike Dealer: #{@dealer}\n"
  end
end

if ARGV.empty?
  puts 'Please provide an input'
else
  name, price, dealer, increase = ARGV
  b1 = Bike.new(name, price, dealer, increase)
  b1.display
  b1.increase_price
  puts "\nAfter #{b1.percent_price_increase} percent hike in price:"
  b1.display
end

